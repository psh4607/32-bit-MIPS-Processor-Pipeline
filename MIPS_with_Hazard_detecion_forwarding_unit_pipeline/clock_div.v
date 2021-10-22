`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:01:38 06/05/2020 
// Design Name: 
// Module Name:    clock_div 
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
module clock_divider(
    input clk,
    input rst,
    output reg clk_op
    );
	 
	 reg [24:0] count;
	 
	 always @(posedge clk or posedge rst) begin
		if(rst) begin
			count <= 0;
			clk_op <= 1'b0;
		end
		else begin
			if(count[24] == 1) begin
				count <= 0;
				clk_op <= ~clk_op;
			end
			else count <= count + 1;
		end
	 end 

endmodule
