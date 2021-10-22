`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:55:00 05/06/2021
// Design Name:   ALU
// Module Name:   C:/Users/HO_win7/Documents/FPGA/ALU/tbtb.v
// Project Name:  ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tbtb;

	// Inputs
	reg [2:0] op;
	reg [31:0] a_in;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.op(op), 
		.a_in(a_in)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		a_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

