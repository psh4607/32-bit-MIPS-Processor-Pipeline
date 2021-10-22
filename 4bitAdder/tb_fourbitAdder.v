`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:12 03/31/2021
// Design Name:   fourbitAdder
// Module Name:   C:/Users/HO_win7/Documents/FPGA/subject2/tb_fourbitAdder.v
// Project Name:  subject2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fourbitAdder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fourbitAdder;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg [3:0] ci;

	// Outputs
	wire [3:0] sum;
	wire co;
	integer k;

	// Instantiate the Unit Under Test (UUT)
	fourbitAdder uut (
		.a(a), 
		.b(b), 
		.ci(ci), 
		.sum(sum), 
		.co(co)
	);

	initial begin
		ci = 1'b0;
		forever begin
			for(k=0; k<16;k=k+1) begin
				b=k;
				a=k/2;
				#50;
			end
		end
		
	end
      
endmodule

