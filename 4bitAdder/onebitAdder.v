`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:15:26 03/31/2021 
// Design Name: 
// Module Name:    onebitAdder 
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
module onebitAdder(
	input a, b, ci,
	output s,co
);	

       assign s = a^b^ci;
       assign co = (a&b) | (ci&(a^b));
		 
endmodule
