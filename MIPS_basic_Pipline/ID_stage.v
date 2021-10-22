
`timescale 1ns / 1ps

module ID_stage(
	input clk,rst,
	input [31:0] inst,
	input in_regWrite,
	input [31:0]WriteData,
	input [4:0] writeRegi,
	
	output [31:0] regData1,
	output [31:0] regData2,
	output reg [5:0] funct,
	output [31:0] ext_immed,
	output ALUSrc, RegDst,  				//EXE stage control sig
	output [1:0]ALUOp,		 				//EXE stage control sig
	output branch, MemWrite, MemRead,	//MEM stage control sig
	output PCSrc, MemtoReg	,regWrite,	//WB stage control sig
	output reg [4:0] rt, rd
    );
	
	reg [4:0] rs;
	reg [15:0] immed; 
	
	always @(*)begin
		//rs, rt, rd 선언
		rs <= inst[25:21];
		rt <= inst[20:16];
		rd <= inst[15:11];
		
		//immed 선언
		immed <= inst[15:0];
		
		//funct 선언
		funct <= inst[5:0];
		
	end
	// 컨트롤러에게 opcode, funct 전송
	controller Controller(
		.opcode(inst[31:26]),
		.ALUSrc(ALUSrc),
		.RegDst(RegDst),
		.ALUOp(ALUOp),
		.branch(branch),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.PCSrc(PCSrc),
		.MemtoReg(MemtoReg),
		.regWrite(regWrite)
		);
		
	//immed sign-extend 
	SignExtend SignExtend(.inn(immed),.outt(ext_immed));
	
	//reg 값 가져오기
	registers registers(.clk(clk),.rst(rst),.RegWrite(in_regWrite),.addr1(rs),.addr2(rt),.addr3(writeRegi),.data(WriteData),.out1(regData1),.out2(regData2));
endmodule




