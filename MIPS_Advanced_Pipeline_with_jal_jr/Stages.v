
module IF(
	input clk, rst,
	input [1:0] jump,
	input PCwrite, same, branch, 
	input [31:0] BeqPc, jr_pc, jal_pc,
	
	output [31:0] next_PC, //pc + 4
	output [31:0] inst
   );
	
	wire PCSrc;
	wire [31:0] PC_out, PC_in, pc_temp;
	
	//next _ pc = pc + 4
	assign next_PC = PC_out +4;
	assign PCSrc = branch & same;
	
	//jal jr select mux
	MUX_3 JumpMUX[31:0](.a(PC_in),.b(jr_pc),.c(jal_pc), .sel(jump),.result(pc_temp));
	
	//PCSrc Mux
	MUX PCsrcMUX[31:0](.a(next_PC),.b(BeqPc),.sel(PCSrc),.result(PC_in));
	
	//Pc register
	PC_reg PC (.clk(clk),.rst(rst),.PCwrite(PCwrite),.PC_in(pc_temp),.PC_out(PC_out));
	
	//instruction memory 
	instruction_memory inst_mem(.clk(clk),.rst(rst),.MemAddr(PC_out),.MemRead(1'b1),.MemWrite(1'b0),.Write_Data(0),.Read_Data(inst));
	 
endmodule

module ID(
	input clk,rst,
	input [31:0] inst, 			// instruction
	
	input Reg_Write,				// signal of RegWrite
	input EXE_MemRead,			// ExE stage MemRead signal
	input [4:0] EXE_rt,			// ExE stage rt value
	input [4:0] Write_reg,
	input [4:0] MEM_dst, WB_dst,	
	input [31:0] Write_data,
	input [31:0] pc_inn,

	output [31:0] Read_data1, Read_data2,
	output [31:0] Sign_extend_res,
	output [4:0] rs_reg, desti_1, desti_2,
	output [1:0]control_WB,		//control WriteBack signal
	output [2:0]control_MEM,	//control Mem signal
	output [3:0]control_EX,		//control EXE signal
	output same, 			
	output IFID_write, PCwrite,		
	output IF_flush, branch, lw_f,
	output [31:0] BeqPc, jr_pc, jal_pc,
	output [1:0] jump,
	output jal,
	output [31:0] pc_outt
);
	
	integer i ;	
	
	// define ID wire 
	wire control_sel;
	wire [1:0] control_wb_in;  
	wire [2:0] control_mem_in;
	wire [3:0] control_ex_in;
	wire [5:0] op_code ;
	wire [31:0] shifted ;
	
	//registerfile 
	reg [31:0] register [31:0]; 

	assign op_code = inst[31:26] ; 								//assign opcode
	assign pc_outt = pc_inn;
	assign desti_1 = inst[20:16];									//rt register
	assign desti_2 = inst[15:11];									//rd register
	assign rs_reg = inst[25:21];
	
	//shift unit 
	assign shifted = (Sign_extend_res <<2);					
	
	// sign extention unit
	assign Sign_extend_res = (inst[15] == 1) ? {16'hFFFF, inst[15:0]} : {16'h0000, inst[15:0]} ; 
	assign same = (Read_data1 == Read_data2)? 1 : 0;
	assign BeqPc = pc_inn + shifted;
	assign Read_data1 = (rst)? 32'b0 : register[inst[25:21]];		
	assign Read_data2 = (rst)? 32'b0 : register[inst[20:16]];
	assign lw_f = control_sel;
	assign jr_pc = register[31];
	assign jal_pc =  { pc_inn[31:28],(inst[25:0] << 2)};
	
	always @(negedge clk or posedge rst) begin
		if(rst)  begin
			for(i = 0; i<32; i = i+1) begin
				register[i] <= 32'h0;
			end
			register[2] <= 32'b0000000000_0000000000_0000000010_00;
			register[4] <= 32'b0000000000_0000000000_0000000010_01;
			register[5] <= 32'b0000000000_0000000000_0000000010_00;
			register[6] <= 32'b0000000000_0000000000_0000000001_11;
			register[7] <= 32'b0000000000_0000000000_0000000001_10;
		end
		else begin
			if(Reg_Write) begin
				register[Write_reg] <= Write_data;
			end
		end
		
	end
	
	control_unit control_Unit(
	.opcode(op_code),
	.control_wb(control_wb_in),
	.control_mem(control_mem_in),
	.control_ex(control_ex_in),
	.IF_flush(IF_flush),
	.branch(branch),
	.jump(jump),
	.jal(jal),
	.inst(inst)
);

	MUX control_WB_mux [1:0](
		.a(control_wb_in),
		.b(2'b0),
		.sel(control_sel),
		.result(control_WB)
	);
	
	MUX control_MEM_mux [2:0](
		.a(control_mem_in),
		.b(3'b0),
		.sel(control_sel),
		.result(control_MEM)
	);
	
	MUX control_EX_mux [3:0](
		.a(control_ex_in),
		.b(4'b0),
		.sel(control_sel),
		.result(control_EX)
	);

	hazard_detection hazard_detection_unit(		
		.clk(clk),
		.ID_rs(rs_reg), 
		.ID_rt(desti_1), 
		.EXE_rt(EXE_rt),
		.EXE_MemRead(EXE_MemRead),
		.rst(rst),
		
		.PCwrite(PCwrite),
		.IFID_write(IFID_write),
		.control_mux_sel(control_sel),
		.IF_flush(IF_flush)
	);
	
endmodule

module EXE(
	input clk, rst,
	input [3:0] control_ex,
	input [4:0] desti_1, desti_2,
	input [4:0] EXE_rs, EXE_rd, MEM_dst, WB_dst,
	input E_M_RegWrite, M_W_RegWrite,F,IF_flush,	
	input [31:0] Sign_extend_res,
	input [31:0] WB_writedata, ALU_Result_MEM,
	input [31:0] read_data1, read_data2,
	
	output [31:0] ALU_result,
	output [4:0] dest_reg_out,
	output [31:0] read_data2_prev
);	
	 
	wire ALUSrc;
	wire RegDst;
	wire [1:0] ALUOp = control_ex[2:1];
	wire [1:0] forwardA, forwardB;
	wire zero;
	wire [3:0] alu_control_signal;
	wire [31:0] alu_inn1, alu_inn2, alu_inn2_temp;
	wire [31:0] ALU_result1;
	

	assign ALUSrc = control_ex[3];
	assign RegDst = control_ex[0];
	assign read_data2_prev = alu_inn2_temp;
	assign ALU_result = (F|IF_flush)? 32'b0 : ALU_result1;
	
	MUX_3 ALU_inn1 [31:0](.a(read_data1),.b(WB_writedata),.c(ALU_Result_MEM),.sel(forwardA),.result(alu_inn1));
	
	MUX_3 ALU_inn2T [31:0](.a(read_data2),.b(WB_writedata),.c(ALU_Result_MEM),.sel(forwardB),.result(alu_inn2_temp));
	
	MUX ALU_inn2 [31:0](.a(alu_inn2_temp), .b(Sign_extend_res),.sel(ALUSrc),.result(alu_inn2)	);
	
	ALU_Ctrl ALU_Ctrl(.func(Sign_extend_res[5:0]),.ALUOP(ALUOp), .ALU_Ctrl_sig(alu_control_signal));
	
	ALU ALU(.rst(rst),.in_data_32_1(alu_inn1),.in_data_32_2(alu_inn2),.opcode(alu_control_signal),.out_data_32(ALU_result1),.zero(zero));
	
	MUX MUX_dest [4:0](.a(desti_1),.b(desti_2),.sel(RegDst),.result(dest_reg_out));	
	
	forwarding_unit forwarding_unit(
	.EXE_rs(EXE_rs), 
	.EXE_rt(EXE_rd), 
	.MEM_dst(MEM_dst), 
	.WB_dst(WB_dst),
	.E_M_RegWrite(E_M_RegWrite), 
	.M_W_RegWrite(M_W_RegWrite),
	.forwardA(forwardA),
	.forwardB(forwardB)
	);

endmodule

module MEM(
	input clk, rst,
	input [2:0] control_sig,
	input [31:0] address, write_data,
	
	output [31:0] read_data, address_outt
);
	wire Branch ;
	wire MemRead ;
	wire MemWrite ;
	
	assign Branch = control_sig[2];
	assign MemRead = control_sig[1];
	assign MemWrite = control_sig[0];
	assign address_outt = address;
	
	data_memory data_memory_mem(
	.clk(clk),	
	.rst(rst),
	.addr(address[4:0]),      
	.MemRead(MemRead),			//read = 1 else = 0
	.MemWrite(MemWrite),		//write = 1 else = 0
	.Write_Data(write_data), 
	.Read_Data(read_data)
	);
	
endmodule

module WB(
	input clk,rst,jal, 
	input [1:0] control_wb,
	input [4:0] dst_reg_in,
	input [31:0] pc, read_address, pc_address,
	
	output RegWrite,
	output [4:0] dst_reg_out,
	output [31:0] write_data
);

	MUX_4 RegWriteMux (.a(dst_reg_in),.b(5'b11111),.sel(jal),.result(dst_reg_out));
	
	FF regWrite_ff(.a(control_wb[1]),.b(RegWrite),.clk,.rst);
	
	MUX_33 MemtoRegMux [31:0](.a(pc_address),.b(read_address),.c(pc),.sel({jal , MemtoReg}),.result(write_data));
	
	assign MemtoReg = control_wb[0];
	
endmodule	