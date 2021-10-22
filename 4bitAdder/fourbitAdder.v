`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:50 03/29/2021 
// Design Name: 
// Module Name:    fourbitAdder 
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
module fourbitAdder(
	input [3:0] a,b,
	input ci,
	output [3:0] sum,
	output co
	);
	wire c1,c2,c3;
	
		onebitAdder u0(a[0],b[0],ci,sum[0],c1);
		onebitAdder u1(a[1],b[1],c1,sum[1],c2);
		onebitAdder u2(a[2],b[2],c2,sum[2],c3);
		onebitAdder u3(a[3],b[3],c3,sum[3],co); 

endmodule

