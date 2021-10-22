`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:43 06/11/2020 
// Design Name: 
// Module Name:    flipflop 
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
module FF(
	input a,
	input clk,
	input rst,
	output reg b
    );
	 
	 always @(posedge clk, posedge rst) begin
		if(rst)begin
			b<= 1'b0;
		end
		else begin
			b<=a;
		end
	end
		
endmodule

module FFIFID(
	input a,
	input clk,
	input rst,
	input IFID_Write,
	input IF_flush,
	output reg b
);
	always @(posedge clk or posedge rst) begin
		if(rst)begin
			b<= 1'b0;
		end
		else begin 
			if(IFID_Write==1) begin
				b<=a;
			end
			else if(IF_flush) begin
				b<=1'b0;
			end
		end
	end
endmodule 