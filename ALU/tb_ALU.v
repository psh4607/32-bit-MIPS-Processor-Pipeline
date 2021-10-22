`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:16:04 05/06/2021
// Design Name:   ALU
// Module Name:   C:/Users/HO_win7/Documents/FPGA/ALU/tb_ALU.v
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

module tb_ALU;

	// Inputs
	reg [2:0] op;
	reg [31:0] a_in;
	reg [31:0] b_in;
	
	// Outputs
	wire [31:0] result;
	wire zero;
	wire overflow;
	
	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.op(op), 
		.a_in(a_in),
		.b_in(b_in),
		.result(result),
		.zero(zero),
		.overflow(overflow)
	);
	
	integer i;
	integer j;
	
	initial begin
		// Initialize Inputs
		a_in = 0;
		b_in = 0;
		op = 0;
	end
	initial begin
		for(j = 3'b000 ; j <= 3'b111; j=j+3'b001)begin	
			if(j !== 3'b011 & j !== 3'b100 & j !== 3'b101 )begin
				for (i=0; i<49 ;i=i+1)begin
					op = j;
					a_in = $random%2000000000;  //  a = -1,000,000,000~ 1,000,000,000 사이의 임의의 정수
					b_in = $random%1000000000;  //  b = -500,000,000 ~ 500,000,000 사이의 임의의 정수
					#50;
				end
			end
		end
		op = 3'b000;
		a_in = 32'b00000000000000000000000000000000;
		b_in = 32'b00000000000000000000000000000000;
		#50
		op = 3'b001;
		a_in = 32'b00000000000000000000000000000000;
		b_in = 32'b00000000000000000000000000000000;
   end
endmodule

