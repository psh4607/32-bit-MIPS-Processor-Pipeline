`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:59:14 06/11/2020 
// Design Name: 
// Module Name:    Stages 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IFstage(
	input clk, rst,
	input [31:0] jmpPC,
	input equal, branch, PCwrite,
	
	output [31:0] instruction, 
	output [31:0] next_PC
   );
	 
	wire [31:0] PC_out;
	wire [31:0] PC_in;
	assign next_PC = PC_out +4;
	
	wire PC_sel;
	assign PC_sel = branch & equal;
	
	
	MUX_21 PCselect[31:0](
	.a(next_PC),
	.b(jmpPC),
	.sel(PC_sel),
	.result(PC_in)
	);
	
	PC_register PC_reg(
	.clk(clk),
	.rst(rst),
	.PCwrite(PCwrite),
	.PC_in(PC_in),
	.PC_out(PC_out)
	);
	
	inst_memory inst_memory(
		.rst(rst),
		.MemAddr(PC_out[4:0]),
		.MemRead(1'b1),
		.MemWrite(1'b0),
		.clk(clk),
		.Write_Data(0),
		.Read_Data(instruction)
	 );
endmodule

module IFIDstage(
	input clk, rst,
	input [31:0] IFIDPC_in,
	input [31:0] IFIDinst_in,
	input IFID_write,			///newport
	input IF_flush,
	
	output [31:0] IFIDPC_out ,
	output [31:0] IFIDinst_out,
	
	output [31:0] IFIDinst_out_test
	);
	
	flipflop_IFID IFID_inst [31:0](
		.a(IFIDinst_in),
		.clk(clk),
		.rst(rst),
		.IFID_Write(IFID_write),
		.IF_flush(IF_flush),
		.b(IFIDinst_out)
   );
	flipflop_IFID IFID_PC [31:0](
		.a(IFIDPC_in),
		.clk(clk),
		.rst(rst),
		.IFID_Write(IFID_write),
		.IF_flush(IF_flush),
		.b(IFIDPC_out)
	);
endmodule	

module IDstage(
	input clk,rst,
	input [31:0] IDinst_in,
	input [4:0] Write_reg,
	input [31:0] Write_data,
	input RegWrite,
	input EXE_MemRead,	////newport
	input [4:0] EXE_rt,
	
	output equal, 				///////new port
	output [31:0] Read_data1,
	output [31:0] Read_data2,
	output [31:0] Sign_extend_result,
	output [4:0] source_reg, 		///newport
	output [4:0] dest_1, dest_2,
	output [1:0]control_WB,
	output [2:0]control_MEM,
	output [3:0]control_EX,
	
	output IFID_write, PCwrite,		//newport
	output IF_flush, branch,
	
	input [31:0] ID_PC_in,
	output [31:0] jmpPC,
	output [1:0] jump
);

	integer i ;
	reg [31:0] Mips_reg [31:0];
	wire [5:0] op_code = IDinst_in[31:26];
	wire [31:0] shifted = (Sign_extend_result <<2);
	assign Sign_extend_result = (IDinst_in[15] == 1) ? {16'hFFFF, IDinst_in[15:0]} : {16'h0000, IDinst_in[15:0]} ; 
	assign source_reg = IDinst_in[25:21];
	assign dest_1 = IDinst_in[20:16];
	assign dest_2 = IDinst_in[15:11];
	assign equal = (Read_data1 == Read_data2)? 1 : 0;
	assign jmpPC = ID_PC_in + shifted;
	
	wire control_sel; ///////new port
	wire [1:0] control_wb_in;
	wire [2:0] control_mem_in;
	wire [3:0] control_ex_in;
	
	control_unit control_ID(
	.opcode(op_code),
	.control_wb(control_wb_in),
	.control_mem(control_mem_in),
	.control_ex(control_ex_in),
	.IF_flush(IF_flush),
	.branch(branch),
	.jump(jump),
	.jal()
);

	MUX_21 control_WB_mux [1:0](
		.a(control_wb_in),
		.b(2'b0),
		.sel(control_sel),
		.result(control_WB)
	);
	
	MUX_21 control_MEM_mux [2:0](
		.a(control_mem_in),
		.b(3'b0),
		.sel(control_sel),
		.result(control_MEM)
	);
	
	MUX_21 control_EX_mux [3:0](
		.a(control_ex_in),
		.b(4'b0),
		.sel(control_sel),
		.result(control_EX)
	);

	assign Read_data1 = (rst)? 32'b0 : Mips_reg[IDinst_in[25:21]];
	assign Read_data2 = (rst)? 32'b0: Mips_reg[IDinst_in[20:16]];

	always @(negedge clk or posedge rst) begin
		if(rst)  begin
			for(i = 0; i<32; i = i+1) begin
				Mips_reg[i] <= 32'h0;
			end
			Mips_reg[1] <= 32'd20;
			Mips_reg[2] <= 32'd8;
			Mips_reg[5] <= 32'd2;
			Mips_reg[7] <= 32'd1;
			Mips_reg[9] <= 32'd3;
		end
		else begin
			if(RegWrite) begin
				Mips_reg[Write_reg] <= Write_data;
			end
		end
		
	end
	
	hazard_detection hazard_detect(		///new module
	.clk(clk),
	.ID_srcreg(source_reg), 
	.ID_rtreg(dest_1), 
	.EXE_rt(EXE_rt),
	.EXE_MemRead(EXE_MemRead),
	.rst(rst),
	
	.PCwrite(PCwrite),
	.IFID_write(IFID_write),
	.control_mux_sel(control_sel) 
);
		
endmodule

module IDEXEStage(
	input clk, rst,
	input [1:0] control_wb_in,
	input [2:0] control_mem_in,
	input [3:0] control_ex_in,
	input [31:0] Read_data1_in,
	input [31:0] Read_data2_in,
	input [31:0] Sign_extend_result_in,
	input [4:0] source_reg_in,		//new port
	input [4:0] dest_1_in, dest_2_in,
	
	output [1:0] control_wb_out,
	output [2:0] control_mem_out,
	output [3:0] control_ex_out,
	output [31:0] Read_data1_out,
	output [31:0] Read_data2_out,
	output [31:0] Sign_extend_result_out,
	output [4:0] source_reg_out, 		////new port
	output [4:0] dest_1_out, dest_2_out
);
	
	
	flipflop control_wb [1:0] (
		.a(control_wb_in),
		.clk(clk),
		.rst(rst),
		.b(control_wb_out)
   );
	
	flipflop control_mem [2:0] (
		.a(control_mem_in),
		.clk(clk),
		.rst(rst),
		.b(control_mem_out)
   );
	
	flipflop control_ex [3:0] (
		.a(control_ex_in),
		.clk(clk),
		.rst(rst),
		.b(control_ex_out)
   );
	
	flipflop Read_data1_FF [31:0](
		.a(Read_data1_in),
		.clk(clk),
		.rst(rst),
		.b(Read_data1_out)
   );
	
	flipflop Read_data2_FF [31:0](
		.a(Read_data2_in),
		.clk(clk),
		.rst(rst),
		.b(Read_data2_out)
   );
	
	flipflop Sign_extend_result_FF [31:0](
		.a(Sign_extend_result_in),
		.clk(clk),
		.rst(rst),
		.b(Sign_extend_result_out)
   );
	
	flipflop source_reg [4:0] (
		.a(source_reg_in),
		.clk(clk),
		.rst(rst),
		.b(source_reg_out)
   );
	
	flipflop dest_1 [4:0](
		.a(dest_1_in),
		.clk(clk),
		.rst(rst),
		.b(dest_1_out)
   );
	
	flipflop dest_2 [4:0](
		.a(dest_2_in),
		.clk(clk),
		.rst(rst),
		.b(dest_2_out)
   );
endmodule

module EXEStage(
	input clk, rst,
	input [3:0] control_ex,
	input [31:0] read_data1, read_data2,
	input [31:0] Sign_extend_result,
	input [4:0] dest_1, dest_2,
	
	output [31:0] ALU_result,
	output [4:0] dest_reg_out,
	
	////////////new ports for forwarding unit
	input [4:0] EXE_rs, EXE_rd, MEM_dstreg, WB_dstreg,
	input E_M_RegWrite, M_W_RegWrite,
	input [31:0] WB_writedata, ALU_Result_MEM,
	output [31:0] read_data2_prev
);	
	 
	wire ALUSrc = control_ex[3];
	wire [1:0] ALUOp = control_ex[2:1];
	wire RegDst = control_ex[0];
	wire [31:0] alu_in_2;
	wire [3:0] alu_control_signal;
	
	///////new wires for forwarding unit
	wire [31:0] alu_in_1, alu_in_2_prev;
	wire [1:0] forwardA, forwardB;
	wire zero;
	
	assign read_data2_prev = alu_in_2_prev;
	
	MUX_41 alu_input_1 [31:0](				
	.a(read_data1),
	.b(WB_writedata),
	.c(ALU_Result_MEM),
	.sel(forwardA),
	.result(alu_in_1)
);
	MUX_41 alu_input_2_prev [31:0](				
	.a(read_data2),
	.b(WB_writedata),
	.c(ALU_Result_MEM),
	.sel(forwardB),
	.result(alu_in_2_prev)
);
	
	MUX_21 alu_input_2 [31:0](
	.a(alu_in_2_prev), 
	.b(Sign_extend_result),
	.sel(ALUSrc),
	.result(alu_in_2)	
	);
	
	alu_control alu_control_exe(
	.func(Sign_extend_result[5:0]),
	.ALUOP(ALUOp), 
	.alu_control_signal(alu_control_signal)
	);
	
	alu alu_exe(
	.rst(rst),
	.in_data_32_1(alu_in_1),
	.in_data_32_2(alu_in_2),
	.opcode(alu_control_signal),
	.out_data_32(ALU_result),
	.zero(zero)
    );
	
	MUX_21 mux_dest [4:0](
	.a(dest_1),
	.b(dest_2),
	.sel(RegDst),
	.result(dest_reg_out)
	);	
	
	forwarding_unit forwardunit(
	.EXE_rs(EXE_rs), 
	.EXE_rt(EXE_rd), 
	.MEM_dstreg(MEM_dstreg), 
	.WB_dstreg(WB_dstreg),
	.E_M_RegWrite(E_M_RegWrite), 
	.M_W_RegWrite(M_W_RegWrite),
	.forwardA(forwardA),
	.forwardB(forwardB)
	);

endmodule

module EXEMEMStage(
	input clk, rst,
	input [1:0] control_wb_in,
	input [2:0] control_mem_in,
	input [31:0] ALUresult_in,
	input [31:0] read_data2_in,
	input [4:0] dst_reg_in,
	
	output [1:0] control_wb_out,
	output [2:0] control_mem_out,
	output [31:0] ALUresult_out,
	output [31:0] read_data2_out,
	output [4:0] dst_reg_out
	 
);
	
	flipflop control_wb [1:0](
		.a(control_wb_in),
		.clk(clk),
		.rst(rst),
		.b(control_wb_out)
   );
	
	flipflop control_mem [2:0](
		.a(control_mem_in),
		.clk(clk),
		.rst(rst),
		.b(control_mem_out)
   );
	
	flipflop ALUresult [31:0](
		.a(ALUresult_in),
		.clk(clk),
		.rst(rst),
		.b(ALUresult_out)
	);
	flipflop read_data2 [31:0](
		.a(read_data2_in),
		.clk(clk),
		.rst(rst),
		.b(read_data2_out)
	);
	flipflop dst_reg [4:0](
		.a(dst_reg_in),
		.clk(clk),
		.rst(rst),
		.b(dst_reg_out)
	);
	
endmodule

module MEMStage(
	input clk, rst,
	input [2:0] control_mem,
	input [31:0] address,
	input [31:0] write_data,
	
	output [31:0] read_data,
	output [31:0] address_out
	
);
	wire Branch = control_mem[2];
	wire MemRead = control_mem[1];
	wire MemWrite = control_mem[0];
	
	assign address_out = address;
	
	data_memory data_memory_mem(
	.clk(clk),	
	.rst(rst),
	.MemAddr(address[4:0]),      
	.MemRead(MemRead),			//read = 1 else = 0
	.MemWrite(MemWrite),		//write = 1 else = 0
	.Write_Data(write_data), 
	.Read_Data(read_data)
	);
	

endmodule

module MEMWBstage(
	input clk, rst,
	input [1:0] wb_control_in,
	input [31:0] read_data_in,
	input [31:0] address_in,
	input [4:0] dst_reg_in,
	
	output [1:0] wb_control_out,
	output [31:0] read_data_out,
	output [31:0] address_out,
	output [4:0] dst_reg_out
);
	

	flipflop wb_control [1:0](
		.a(wb_control_in),
		.clk(clk),
		.rst(rst),
		.b(wb_control_out)
	);
	
	flipflop read_data [31:0](
		.a(read_data_in),
		.clk(clk),
		.rst(rst),
		.b(read_data_out)
	);

	flipflop address [31:0](
		.a(address_in),
		.clk(clk),
		.rst(rst),
		.b(address_out)
	);
	
	flipflop dst_reg [4:0](
		.a(dst_reg_in),
		.clk(clk),
		.rst(rst),
		.b(dst_reg_out)
	);
	
endmodule

module WBstage(
	input clk,rst,
	input [1:0] control_wb,
	input [31:0] read_address, pc_address,
	
	output RegWrite,
	output [31:0] write_data
);
	assign RegWrite = control_wb[1];
	assign MemtoReg = control_wb[0];
	
	MUX_21 wb_mux [31:0](
		.a(pc_address),
		.b(read_address),
		.sel(MemtoReg),
		.result(write_data)
	);

	
endmodule	