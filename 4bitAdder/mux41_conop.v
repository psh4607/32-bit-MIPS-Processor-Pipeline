`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:53 03/29/2021 
// Design Name: 
// Module Name:    mux41_conop 
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
module mux41_conop(
	input	[1:0] sel,
	input [3:0]	a,b,c,d,
	output[3:0] y
);
	
	assign y =  (sel == 2'b00) ? a:
					(sel == 2'b01) ? b:
					(sel == 2'b10) ? c:
					(sel == 2'b11) ? d: 4'bx;
endmodule
