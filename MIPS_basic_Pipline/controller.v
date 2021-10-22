`timescale 1ns / 1ps

module controller(
	input [5:0] opcode,
	output reg ALUSrc, RegDst,  				//EXE stage control sig
	output reg [1:0]ALUOp,		 				//EXE stage control sig
	output reg branch, MemWrite, MemRead,	//MEM stage control sig
	output reg PCSrc, MemtoReg	,regWrite	//WB stage control sig
	);
	
	always@(*)begin
		if(opcode == 6'b000000 )begin // opcode,funct refer R-type operation
			RegDst <= 1'b1;
			ALUSrc <= 1'b0;
			ALUOp <= 2'b10;
			branch <= 1'b0;
			MemWrite <= 1'b0;
			MemRead <= 1'b0;
			PCSrc <= 1'b0;
			MemtoReg <= 1'b0;
			regWrite <= 1'b1;			
		end
		else if(opcode == 6'b100011)begin // lw instruction을 실행
			ALUOp <= 2'b00;
			RegDst <= 1'b0;
			ALUSrc <= 1'b1;
			branch <= 1'b0;
			MemWrite <= 1'b0;
			MemRead <= 1'b1;
			PCSrc <= 1'b0;
			MemtoReg <= 1'b1;
			regWrite <= 1'b1;	
		end
		else if(opcode == 6'b101011)begin // sw instrutcion을 실행
			ALUOp <= 2'b00;
			RegDst <= 1'b0;
			ALUSrc <= 1'b1;
			branch <= 1'b0;
			MemWrite <= 1'b1;
			MemRead <= 1'b0;
			PCSrc <= 1'b0;
			MemtoReg <= 1'b0;
			regWrite <= 1'b0;
		end
		else if(opcode == 6'b000100)begin // beq instruction
			ALUOp <= 2'b01;
			RegDst <= 1'b0;
			ALUSrc <= 1'b0;
			branch <= 1'b1;
			MemWrite <= 1'b0;
			MemRead <= 1'b0;
			PCSrc <= 1'b1;
			MemtoReg <= 1'b0;
			regWrite <= 1'b0;
		end
		else begin
			ALUOp <= 2'b0;
			RegDst <= 1'b0;
			ALUSrc <= 1'b0;
			branch <= 1'b0;
			MemWrite <= 1'b0;
			MemRead <= 1'b0;
			PCSrc <= 1'b0;
			MemtoReg <= 1'b0;
			regWrite <= 1'b0;
		end
	end
	
endmodule