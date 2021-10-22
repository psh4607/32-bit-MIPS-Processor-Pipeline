`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:43 03/29/2021
// Design Name:   mux41_if
// Module Name:   C:/Users/HO_win7/Documents/FPGA/subject2/tb2_mux41_if.v
// Project Name:  subject2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux41_if
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb2_mux41_if;

	// Inputs
	reg [1:0] sel;
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] c;
	reg [3:0] d;

	// Outputs
	wire [3:0] y;

	// Instantiate the Unit Under Test (UUT)
	mux41_if uut (
		.sel(sel), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0001;
		b = 4'b0010;
		c = 4'b0100;
		d = 4'b1000;
		#100
		a = 4'b1100;
		b = 4'b0011;
		c = 4'b0110;
		d = 4'b1001;
		end
		
		initial sel = 2'b00;
		always #20 sel = sel +1; 
        
      
endmodule

