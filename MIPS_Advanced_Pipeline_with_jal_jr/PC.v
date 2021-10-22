`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:02:21 06/24/2021 
// Design Name: 
// Module Name:    PC 
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
module PC_reg(
	input clk,rst, PCwrite,
	input [31:0] PC_in,
	output reg [31:0] PC_out
);
	always@(posedge clk, posedge rst) begin
		if(rst) begin 
			PC_out <= 32'b0;
		end
		else if(PCwrite)begin
			PC_out <= PC_in;
		end
	end
	
endmodule