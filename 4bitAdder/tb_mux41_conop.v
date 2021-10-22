`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:52:29 03/29/2021
// Design Name:   mux41_conop
// Module Name:   C:/Users/HO_win7/Documents/FPGA/subject2/tb_mux41_conop.v
// Project Name:  subject2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux41_conop
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mux41_conop;

	// Inputs
	reg [1:0] sel;
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [3:0] d;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	mux41_conop uut (
		.sel(sel), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		sel = 0;
		a = 0;
		b = 0;
		c = 0;
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

