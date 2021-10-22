`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   05:21:38 06/07/2021
// Design Name:   MIPS
// Module Name:   C:/Users/HO_win7/Documents/FPGA/basic_pipline/tb_MIPS.v
// Project Name:  basic_pipline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MIPS
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_MIPS;

	// Inputs
	reg clk;
	reg rst;
	
	// Outputs
	wire [31:0] result;

	integer i;
	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.cclk(clk), 
		.rst(rst),
		.result(result)
	);


	initial begin
		// Initialize Inputs
		rst = 0;
		for(i=0; i<= 100; i=i+1)begin
			clk=0;
			#50; 
			clk=1;
			#50;
		end	
	end
	
endmodule

