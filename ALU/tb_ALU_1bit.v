`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:43:35 04/26/2021
// Design Name:   ALU_1bit
// Module Name:   C:/Users/HO_win7/Documents/FPGA/aluDesign/tb_ALU_1bit.v
// Project Name:  aluDesign
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_ALU_1bit;

	// Inputs
	reg [1:0] op;
	reg a_in;
	reg b_in;
	reg Cin;
	reg Binv;
	reg less;

	// Outputs
	wire result;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	ALU_1bit uut (
		.op(op), 
		.a_in(a_in), 
		.b_in(b_in), 
		.Cin(Cin), 
		.Binv(Binv), 
		.less(less), 
		.result(result), 
		.Cout(Cout)
	);

	initial begin
		// AND operation check
		op = 2'b00;
		Cin = 0;
		Binv = 0;
		less = 1;
		a_in = 1'b0;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b0;
		#50;
		a_in = 1'b0;
		b_in = 1'b1;
		#50;
		a_in = 1'b1;
		b_in = 1'b1;
		#50;
		// OR operation check 
		op = 2'b01;
		a_in = 1'b0;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b0;
		#50;
		a_in = 1'b0;
		b_in = 1'b1;
		#50;
		a_in = 1'b1;
		b_in = 1'b1;
		#50;
		// ADD operation check
		op = 2'b10;
		a_in = 1'b0;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b0;
		#50;
		a_in = 1'b0;
		b_in = 1'b1;
		#50;
		a_in = 1'b1;
		b_in = 1'b1;
		#50;
		
		// Initialize Inputs
		a_in = 0;
		b_in = 0;
		Cin = 0;
		Binv = 0;
		less = 1;
		op = 0;

		// SUB operation check
		op = 2'b10; Binv = 1;
		a_in = 1'b0;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b1;
		#50;
		// SLT operation check
		op = 2'b11;
		a_in = 1'b0;
		b_in = 1'b0;
		#50;
		a_in = 1'b1;
		b_in = 1'b0;
		#50;
		a_in = 1'b0;
		b_in = 1'b1;
		#50;
		a_in = 1'b1;
		b_in = 1'b1;
		#50;
		
	end			
		
endmodule

