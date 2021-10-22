`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:08:16 06/24/2021 
// Design Name: 
// Module Name:    Mux 
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

//basic MUX
module MUX(
	input a,
	input b,
	input sel,
	output result
	);
	
	assign result = (sel)? b : a;
endmodule


//4bit MUX
module MUX_4(
	input [4:0] a,
	input [4:0] b,
	input sel,
	output [4:0] result
	);
	
	assign result = (sel)? b : a;
endmodule

//MUX 3to1
module MUX_3(				///////////////////new module
	input a,
	input b,
	input c,
	input [1:0] sel,
	output result
);
	assign result = (sel == 2'b10) ? c :
						 (sel == 2'b01) ? b : a; 
endmodule

//other Logic Mux 3to1
module MUX_33(				///////////////////new module
	input a,
	input b,
	input c,
	input [1:0] sel,
	output result
);
	assign result = (sel == 2'b10|sel == 2'b11) ? c :
						 (sel == 2'b01) ? b : a; 
endmodule 