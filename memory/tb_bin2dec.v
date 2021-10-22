`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:36 05/20/2021
// Design Name:   bin2dec
// Module Name:   C:/Users/HO_win7/Documents/FPGA/memory/tb_bin2dec.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bin2dec
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bin2dec;

	// Inputs
	reg [7:0] bin;

	// Outputs
	wire integer dec;

	// Instantiate the Unit Under Test (UUT)
	bin2dec uut (
		.bin(bin), 
		.dec(dec)
	);

	initial begin
		// Initialize Inputs
		bin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		bin = 8'b00000101;
	end
      
endmodule

