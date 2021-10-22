`timescale 1ns / 1ps


module MEM_stage(
	input [31:0] target,
	input zero,
	input [31:0] result,
	input branch,
	input [31:0] regData2,
	input [4:0] regDesti,
	input MemWrite, MemRead,
	
	output reg PCSrc,
	output [31:0] M_ReadData
    );
	
	always @(*)begin
		//PCSrc and gate
		PCSrc = branch && zero;
	end
	
	//DataMemory 읽기 또는 쓰기
	DataMemory DataMem(
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.addr(result),
		.WriteData(regData2),
		.outt(M_ReadData)
	);
		
endmodule

