module IFID_reg(
	input clk, rst,
	
	input [31:0] pc,
	input [31:0] inst,
	
	output [31:0] out_pc,
	output [31:0] out_inst
    );

	Flipflop32 Fpc(.clk(clk),.rst(rst),.a(pc),.b(out_pc));
	Flipflop32 Finst(.clk(clk),.rst(rst),.a(inst),.b(out_inst));
	
	
endmodule


module IDEXE_reg(
	input clk, rst,
	
	input ALUSrc, RegDst,  				//EXE stage control sig
	input [1:0]ALUOp,		 				//EXE stage control sig
	input branch, MemWrite, MemRead,	//MEM stage control sig
	input PCSrc, MemtoReg ,regWrite,	//WB stage control sig
	input [31:0] pc, 
	input [4:0] rt,rd,
	input [31:0] regData1, regData2, immed,
	input [5:0] funct,
	
	output A_ALUSrc, A_RegDst,
	output [1:0] A_ALUOp,		 				//EXE stage control sig
	output A_branch, A_MemWrite, A_MemRead,	//MEM stage control sig
	output A_PCSrc, A_MemtoReg, A_regWrite,	//WB stage control sig
	output [31:0] A_pc,
	output [4:0] A_rt, A_rd,
	output [31:0] A_regData1, A_regData2, A_immed,
	output [5:0] A_funct
	
	);
	Flipflop FALUSrc(.clk(clk),.rst(rst),.a(ALUSrc),.b(A_ALUSrc));
	Flipflop FRegDst(.clk(clk),.rst(rst),.a(RegDst),.b(A_RegDst));
	Flipflop2 FALUOp(.clk(clk),.rst(rst),.a(ALUOp),.b(A_ALUOp));
	Flipflop Fbranch(.clk(clk),.rst(rst),.a(branch),.b(A_branch));
	Flipflop FMemWrite(.clk(clk),.rst(rst),.a(MemWrite),.b(A_MemWrite));
	Flipflop FMemRead(.clk(clk),.rst(rst),.a(MemRead),.b(A_MemRead));
	Flipflop FPCSrc(.clk(clk),.rst(rst),.a(PCSrc),.b(A_PCSrc));
	Flipflop FMemtoReg(.clk(clk),.rst(rst),.a(MemtoReg),.b(A_MemtoReg));
	Flipflop FregWrite(.clk(clk),.rst(rst),.a(regWrite),.b(A_regWrite));
	Flipflop32 Fpc(.clk(clk),.rst(rst),.a(pc),.b(A_pc));
	Flipflop5 Frt(.clk(clk),.rst(rst),.a(rt),.b(A_rt));
	Flipflop5 Frd(.clk(clk),.rst(rst),.a(rd),.b(A_rd));
	Flipflop32 FregData1(.clk(clk),.rst(rst),.a(regData1),.b(A_regData1));
	Flipflop32 FregData2(.clk(clk),.rst(rst),.a(regData2),.b(A_regData2));
	Flipflop32 Fimmed(.clk(clk),.rst(rst),.a(immed),.b(A_immed));
	Flipflop6 Ffunct(.clk(clk),.rst(rst),.a(funct),.b(A_funct));
	
endmodule 

module EXEMEM_reg(
	input clk,rst,
	
	input [4:0] regDesti,
	input [31:0] target,
	input [31:0] result,
	input [31:0] regData2,
	input zero,
	input branch, MemWrite, MemRead,	//MEM stage control sig
	input PCSrc, MemtoReg, regWrite,	//WB stage control sig
	
	output [4:0] A_regDesti,
	output [31:0] A_target,
	output [31:0] A_result,
	output [31:0] A_regData2,
	output A_zero,
	output A_branch, A_MemWrite, A_MemRead,	//MEM stage control sig
	output A_PCSrc, A_MemtoReg, A_regWrite	//WB stage control sig
	);
	
	Flipflop5 FregDesti(.clk(clk),.rst(rst),.a(regDesti),.b(A_regDesti));
	Flipflop32 Ftarget(.clk(clk),.rst(rst),.a(target),.b(A_target));
	Flipflop32 Fresult(.clk(clk),.rst(rst),.a(result),.b(A_result));
	Flipflop32 FregData2(.clk(clk),.rst(rst),.a(regData2),.b(A_regData2));
	Flipflop Fzero(.clk(clk),.rst(rst),.a(zero),.b(A_zero));
	Flipflop Fbranch(.clk(clk),.rst(rst),.a(branch),.b(A_branch));
	Flipflop FMemWrite(.clk(clk),.rst(rst),.a(MemWrite),.b(A_MemWrite));
	Flipflop FMemRead(.clk(clk),.rst(rst),.a(MemRead),.b(A_MemRead));
	Flipflop FPCSrc(.clk(clk),.rst(rst),.a(PCSrc),.b(A_PCSrc));
	Flipflop FMemtoReg(.clk(clk),.rst(rst),.a(MemtoReg),.b(A_MemtoReg));
	Flipflop FregWrite(.clk(clk),.rst(rst),.a(regWrite),.b(A_regWrite));
	
endmodule 

module MEMWB_reg(
	input clk, rst,
	
	input [4:0] regDesti,
	input [31:0] ReadData, result,
	input MemtoReg,regWrite,//WB stage control sig
	
	output [4:0] A_regDesti,
	output [31:0] M_ReadData,A_result,
	output A_MemtoReg, A_regWrite	//WB stage control sig
	
	);
	
	Flipflop5 FregDesti(.clk(clk),.rst(rst),.a(regDesti),.b(A_regDesti));
	Flipflop32 FReadData(.clk(clk),.rst(rst),.a(ReadData),.b(M_ReadData));
	Flipflop32 Fresult(.clk(clk),.rst(rst),.a(result),.b(A_result));
	Flipflop FMemtoReg(.clk(clk),.rst(rst),.a(MemtoReg),.b(A_MemtoReg));
	Flipflop FregWrite(.clk(clk),.rst(rst),.a(regWrite),.b(A_regWrite));
endmodule 
