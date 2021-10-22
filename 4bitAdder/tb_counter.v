`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:08 03/31/2021
// Design Name:   counter
// Module Name:   C:/Users/HO_win7/Documents/FPGA/subject2/tb_counter.v
// Project Name:  subject2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_counter;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire clk_operating;

	// Instantiate the Unit Under Test (UUT)
	counter uut (
		.clk(clk), 
		.rst(rst), 
		.clk_operating(clk_operating)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst <= 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst<=0;
		// Add stimulus here
	end
	always begin
		#1 clk <= ~clk;
	end
      
endmodule

