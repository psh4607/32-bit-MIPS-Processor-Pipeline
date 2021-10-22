`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:30 06/24/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	input rst,
	input [31:0] in_data_32_1,
	input [31:0] in_data_32_2,
	input [3:0] opcode,
	output reg [31:0] out_data_32,
	output zero
    );
	 
	assign zero = (out_data_32 == 0)? 1'b1 : 1'b0;
	
	always @(*) begin
			case(opcode)
				4'b0000 : out_data_32 <= (in_data_32_1) & (in_data_32_2); 
				4'b0001 : out_data_32 <= (in_data_32_1) | (in_data_32_2); 
				4'b0010 : out_data_32 <= in_data_32_1 + in_data_32_2;
				4'b0110 : out_data_32 <= in_data_32_1 - in_data_32_2;
				4'b0111 : out_data_32 <= (in_data_32_1 < in_data_32_2)? 1 : 0;
				default : out_data_32 <= 32'b0;
			endcase
	end
	
endmodule 