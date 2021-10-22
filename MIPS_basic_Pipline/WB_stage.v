`timescale 1ns / 1ps

module WB_stage(
	input MemtoReg,	//WB stage control sig
	input [31:0] result,
	input [31:0] M_ReadData,
	
	output reg [31:0] WriteData
    );

	always @(*)begin
		// MemtoReg Mus
		case(MemtoReg)
			1'b0 : WriteData <= M_ReadData;
			1'b1 : WriteData <= result;
			default : WriteData <= 32'bx;
		endcase

	end

endmodule
