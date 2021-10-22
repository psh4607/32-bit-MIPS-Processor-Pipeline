`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:19 03/29/2021 
// Design Name: 
// Module Name:    onebitAddder 
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
module onebitAddder(
	input a, b, ci,
	output s,co
);	

       assign s = a^b^ci;
       assign co = (a&b) | (ci&(a^b));
		 
endmodule
