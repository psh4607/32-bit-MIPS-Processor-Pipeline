`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:34 03/29/2021 
// Design Name: 
// Module Name:    mux41_case 
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
module mux41_case(
   input	[1:0] sel,
	input [3:0]	a,b,c,d,
	output reg [3:0] y
);
	
	always@(*)begin
		case (sel)
			2'b00 : y = a;
			2'b01 : y = b;
			2'b10 : y = c;
			2'b11 : y = d;
			default : y = 4'bx;
		endcase
	end
endmodule
