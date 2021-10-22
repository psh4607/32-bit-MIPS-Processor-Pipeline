`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:09:27 03/31/2021
// Design Name:   onebitAddder
// Module Name:   C:/Users/HO_win7/Documents/FPGA/subject2/tb_onebitAdder.v
// Project Name:  subject2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: onebitAddder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_onebitAdder;

	// Inputs
	reg a;
	reg b;
	reg ci;

	// Outputs
	wire s;
	wire co;

	// Instantiate the Unit Under Test (UUT)
	onebitAddder uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.s(s), 
		.co(co)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

