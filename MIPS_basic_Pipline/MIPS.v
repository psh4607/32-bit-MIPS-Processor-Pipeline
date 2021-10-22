	`timescale 1ns / 1ps

module MIPS(
	input cclk, rst,
	output [31:0] result
    );
	 
	//common wire
	wire w1, w2, w3; 
	
	// from IF wire
	wire [31:0] wif1, wif2;
	
	// from L_IF/ID
	wire [31:0] wlii1, wlii2;
	
	// from ID wire
	wire [31:0] wid1 ,wid2, wid4;
	wire [5:0] wid3; 
	wire wid5, wid6, wid7, wid8, wid9, wid10, wid11, wid12;
	wire [1:0] wid13;
	wire [4:0] wid14, wid15;
	
	//from L_ID/EXE wire 
	wire wlie1, wlie2, wlie3, wlie4, wlie5, wlie6, wlie7, wlie8;
	wire [1:0] wlie9;
	wire [31:0] wlie10, wlie11, wlie12, wlie13;
	wire [4:0] wlie14, wlie15;
	wire [5:0] wlie16;
	
	// from EXE wire
	wire wexe1;
	wire [4:0] wexe2;
	wire [31:0] wexe3,wexe4, wexe5;
	
	// from L_ExE/Mem wire
	wire [4:0] wlem3;
	wire [31:0] wlem1, wlem2, wlem11;
	wire wlem4, wlem5, wlem6, wlem7, wlem8, wlem9, wlem10;
	
	// from MEM wire
	wire wmem1;
	wire [31:0]wmem2, wmem3;
	
	// from L_MEM/WB wire
	wire wlmw1, wlmw2;
	wire [4:0] wlmw3;
	wire [31:0] wlmw4, wlmw5;
	
	// from wb wire
	wire [31:0] wwb1;
	wire clk;

//	counter clk_d(
//		.cclk(cclk),
//		.rst(rst),
//		.clk_operating(clk)
//	);
	
	//Comment out the code below if you want to run it on FPGA 
	//If you want to run it in a testbench, uncomment it.  
	assign clk = cclk;
	//--------------------------------------------------------
	
	IF_stage IF(
		.clk(clk),
		.rst(rst),
		.PCSrc(wmem1),
		.target(wlem1),
		
		.After_pc(wif1),
		.inst(wif2)
	);

	IFID_reg LIFID(
		 .clk(clk), .rst(rst),
		 .pc(wif1),
		 .inst(wif2),
		 
		 .out_pc(wlii1),
		 .out_inst(wlii2)
    );
	
	ID_stage ID(
		.clk(clk),.rst(rst),
		.inst(wlii2),.in_regWrite(wlmw2),
		.WriteData(wwb1),.writeRegi(wlmw3),
		
		.regData1(wid1),
		.regData2(wid2),
		.funct(wid3),
		.ext_immed(wid4),
		.ALUSrc(wid5), .RegDst(wid6),
		.ALUOp(wid13),
		.branch(wid7),.MemWrite(wid8),.MemRead(wid9),
		.PCSrc(wid10),.MemtoReg(wid11),.regWrite(wid12),
		.rt(wid14),.rd(wid15)
	);
	
	
	
	IDEXE_reg LIDEXE(
		 .clk(clk), .rst(rst),

		 .ALUSrc(wid5), .RegDst(wid6),  							//EXE stage control sig
		 .ALUOp(wid13),		 										//EXE stage control sig
		 .branch(wid7), .MemWrite(wid8), .MemRead(wid9),	//MEM stage control sig
		 .PCSrc(wid10), .MemtoReg(wid11) ,.regWrite(wid12),//WB stage control sig
		 .pc(wlii1), 
		 .rt(wid14),.rd(wid15),
		 .regData1(wid1), .regData2(wid2), .immed(wid4),
		 .funct(wid3),
		
		 .A_ALUSrc(wlie1), .A_RegDst(wlie2),								//EXE stage control sig
		 .A_ALUOp(wlie9),		 													//EXE stage control sig
		 .A_branch(wlie3), .A_MemWrite(wlie4), .A_MemRead(wlie5),	//MEM stage control sig
		 .A_PCSrc(wlie6), .A_MemtoReg(wlie7), .A_regWrite(wlie8),	//WB stage control sig
		 .A_pc(wlie10),
		 .A_rt(wlie14), .A_rd(wlie15),
		 .A_regData1(wlie11), .A_regData2(wlie12), .A_immed(wlie13),
		 .A_funct(wlie16)
	);
	
	EXE_stage ExE(
		 .pc(wlie10),
		 .funct(wlie16),
		 .regData1(wlie11), .regData2(wlie12),
		 .ext_immed(wlie13),
		 .ALUSrc(wlie1), .RegDst(wlie2),  					//EXE stage control sig
		 .ALUOp(wlie9),		 								//EXE stage control sig
		 .rt(wlie14),.rd(wlie15),
		 
		 .regDesti(wexe2),
		 .target(wexe3),
		 .Alu_result(wexe4),
		 .zero(wexe1),
		 .A_regData2(wexe5)
	);
	
	assign result = wexe4;
	
	EXEMEM_reg LExEMeM(
		 .clk(clk), .rst(rst),
	
		 .regDesti(wexe2),
		 .target(wexe3),
		 .result(wexe4),
		 .zero(wexe1),
		 .regData2(wexe5),
		 .branch(wlie3), .MemWrite(wlie4), .MemRead(wlie5),		//MEM stage control sig
		 .PCSrc(wlie6), .MemtoReg(wlie7), .regWrite(wlie8),		//WB stage control sig
		
		 .A_regDesti(wlem3),
		 .A_target(wlem1),
		 .A_result(wlem2),
		 .A_regData2(wlem11),
		 .A_zero(wlem4),
		 .A_branch(wlem5), .A_MemWrite(wlem6), .A_MemRead(wlem7),	//MEM stage control sig
		 .A_PCSrc(wlem8), .A_MemtoReg(wlem9), .A_regWrite(wlem10)		//WB stage control sig
	);
	
	MEM_stage MeM(
		.branch(wlem5), 
		.target(wlem1),
		.zero(wlem4),
		.result(wlem2),
		.regData2(wlem11),.regDesti(wlem3),		
		.MemWrite(wlem6),.MemRead(wlem7),
		
		.PCSrc(wmem1),
		.M_ReadData(wmem2)
	);
	
	MEMWB_reg LMeMWB(
			
		 .clk(clk), .rst(rst),
	
		 .regDesti(wlem3),
		 .ReadData(wmem2), .result(wlem2),
		 .MemtoReg(wlem9),.regWrite(wlem10),	//WB stage control sig
		
		 .A_regDesti(wlmw3),
		 .M_ReadData(wlmw4), .A_result(wlmw5),
		 .A_MemtoReg(wlmw1),.A_regWrite(wlmw2)	//WB stage control sig
	);
	
	WB_stage WB(
		.MemtoReg(wlmw1),	//WB stage control sig
		.result(wlmw5),
		.M_ReadData(wlmw4),
		
		.WriteData(wwb1)
	); 
	
endmodule
