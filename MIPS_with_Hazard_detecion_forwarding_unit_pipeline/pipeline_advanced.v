`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:48:05 06/11/2020 
// Design Name: 
// Module Name:    pipeline 
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
module pipeline(
	input clock,
	input reset,
	output [31:0] result
    );
	
	wire [31:0] jumpPC; 
	wire PCSrc, RegWrite; 
	wire [31:0] next_PC_IF, next_PC_ID;
	wire [31:0] inst_IF, inst_ID; 
	wire [4:0] write_reg;
	wire [31:0] write_data, read_data1_ID, read_data1_EXE, read_data2_ID, read_data2_EXE, read_data2_MEM;
	wire [31:0] sign_extend_ID, sign_extend_EXE;
	wire [4:0] dest_1_ID, dest_2_ID, dest_1_EXE, dest_2_EXE;
	wire [4:0] dest_out_EXE, dest_out_MEM;
	wire [31:0] ALU_result;
	wire [31:0] mem_address;
	wire [31:0] read_data_MEM, read_data_WB;
	wire [31:0] address_out_MEM, address_out_WB;
	
	wire [1:0] control_WB_ID, control_WB_EXE, control_WB_MEM, control_WB_WB;
	wire [2:0] control_MEM_ID, control_MEM_EXE, control_MEM_MEM;
	wire [3:0] control_EX_ID, control_EX_EXE;
	
	wire equal, branch, PCwrite, IFID_write, IF_flush;
	wire [4:0] source_reg_ID, source_reg_EXE;
	wire [31:0] read_data2_prev_EXE, read_data2_prev_MEM;
	wire [31:0] inst_IF_1, inst_ID_1;
	
		
	clock_divider clk_div(
	 .clk(clock),
    .rst(reset),
    .clk_op(clk)
    );
	 
	assign clk = clock;
	
	IFstage IF_Stage(
	.clk(clk),
	.rst(reset),
	.jmpPC(jumpPC),
	.equal(equal), 
	.branch(branch), 
	.PCwrite(PCwrite),
	
	.instruction(inst_IF_1), 
	.next_PC(next_PC_IF)
   );
	wire [31:0] IFIDinst_out_test;
	
	IFIDstage IFID_Stage(
	.clk(clk), 
	.rst(reset),
	.IFIDPC_in(next_PC_IF),
	.IFIDinst_in(inst_IF_1),
	.IFID_write(IFID_write),			
	.IF_flush(IF_flush),
	
	.IFIDPC_out(next_PC_ID) ,
	.IFIDinst_out(inst_ID_1),
	.IFIDinst_out_test(IFIDinst_out_test)
	);
	
	IDstage ID_Stage(
	.clk(clk),
	.rst(reset),
	.IDinst_in(inst_ID_1),
	.Write_reg(write_reg),
	.Write_data(write_data),
	.RegWrite(RegWrite),
	.EXE_MemRead(control_MEM_EXE[1]),	
	.EXE_rt(dest_1_EXE),
	
	.equal(equal),
	.Read_data1(read_data1_ID),
	.Read_data2(read_data2_ID),
	.Sign_extend_result(sign_extend_ID),
	.source_reg(source_reg_ID), 
	.dest_1(dest_1_ID), 
	.dest_2(dest_2_ID),
	.control_WB(control_WB_ID),
	.control_MEM(control_MEM_ID),
	.control_EX(control_EX_ID),
	.IFID_write(IFID_write), 
	.PCwrite(PCwrite),		
	.IF_flush(IF_flush),
	.branch(branch),
	
	.ID_PC_in(next_PC_ID),
	.jmpPC(jumpPC),
	.jump()
); 

	IDEXEStage IDEXE_Stage(
	.clk(clk), 
	.rst(reset),
	.control_wb_in(control_WB_ID),
	.control_mem_in(control_MEM_ID),
	.control_ex_in(control_EX_ID),
	.Read_data1_in(read_data1_ID),
	.Read_data2_in(read_data2_ID),
	.Sign_extend_result_in(sign_extend_ID),
	.source_reg_in(source_reg_ID),		
	.dest_1_in(dest_1_ID), 
	.dest_2_in(dest_2_ID),
	
	.control_wb_out(control_WB_EXE),
	.control_mem_out(control_MEM_EXE),
	.control_ex_out(control_EX_EXE),
	.Read_data1_out(read_data1_EXE),
	.Read_data2_out(read_data2_EXE),
	.Sign_extend_result_out(sign_extend_EXE),
	.source_reg_out(source_reg_EXE), 
	.dest_1_out(dest_1_EXE), 
	.dest_2_out(dest_2_EXE)
);

	EXEStage EXE_Stage(
	.clk(clk), 
	.rst(reset),
	.control_ex(control_EX_EXE),
	.read_data1(read_data1_EXE),
	.read_data2(read_data2_EXE), 	
	.Sign_extend_result(sign_extend_EXE),
	.dest_1(dest_1_EXE), 
	.dest_2(dest_2_EXE),
	
	.ALU_result(ALU_result),
	.dest_reg_out(dest_out_EXE),
	
	.EXE_rs(source_reg_EXE), 
	.EXE_rd(dest_1_EXE), 
	.MEM_dstreg(dest_out_MEM), 
	.WB_dstreg(write_reg),
	.E_M_RegWrite(control_WB_MEM[1]), 
	.M_W_RegWrite(control_WB_WB[1]),
	.WB_writedata(write_data), 
	.ALU_Result_MEM(mem_address),
	.read_data2_prev(read_data2_prev_EXE)   //edit
);	


	EXEMEMStage EXEMEM_Stage(
	.clk(clk),
	.rst(reset),
	.control_wb_in(control_WB_EXE),
	.control_mem_in(control_MEM_EXE),
	.ALUresult_in(ALU_result),
	.read_data2_in(read_data2_prev_EXE),
	.dst_reg_in(dest_out_EXE),
	
	.control_wb_out(control_WB_MEM),
	.control_mem_out(control_MEM_MEM),
	.ALUresult_out(mem_address),
	.read_data2_out(read_data2_prev_MEM),
	.dst_reg_out(dest_out_MEM)
);
	MEMStage MEM_Stage(
	.clk(clk), 
	.rst(reset),
	.control_mem(control_MEM_MEM),
	.address(mem_address),
	.write_data(read_data2_prev_MEM),
	
	.read_data(read_data_MEM),
	.address_out(address_out_MEM)
);

	MEMWBstage MEMWB_Stage(
	.clk(clk),
	.rst(reset),
	.wb_control_in(control_WB_MEM),
	.read_data_in(read_data_MEM),
	.address_in(address_out_MEM),
	.dst_reg_in(dest_out_MEM),
	
	.wb_control_out(control_WB_WB),
	.read_data_out(read_data_WB),
	.address_out(address_out_WB),
	.dst_reg_out(write_reg)
);
	WBstage WB_Stage(
	.clk(clk),
	.rst(reset),
	.control_wb(control_WB_WB),
	.read_address(read_data_WB), 
	.pc_address(address_out_WB),
	
	.RegWrite(RegWrite),
	.write_data(write_data)
);
	
	
	assign result = ALU_result;
	

endmodule

