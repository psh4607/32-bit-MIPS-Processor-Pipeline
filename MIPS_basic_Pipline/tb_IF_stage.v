`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:04:45 06/08/2021
// Design Name:   IF_stage
// Module Name:   C:/Users/HO_win7/Documents/FPGA/basic_pipline/tb_IF_stage.v
// Project Name:  basic_pipline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IF_stage
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_IF_stage;

	// Inputs
	reg PCSrc;
	reg [31:0] target;

	// Outputs
	wire [31:0] After_pc;
	wire [31:0] inst;

	// Instantiate the Unit Under Test (UUT)
	IF_stage uut (
		.clk(clk),
		.rst(rst), 
		.PCSrc(PCSrc), 
		.target(target), 
		.After_pc(After_pc), 
		.inst(inst)
	);
	
	reg clk;
	reg rst;
	integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		PCSrc = 0;
		target = 3;
		
		for(i=0; i<= 100; i=i+1)begin
			#50;
			clk=1;
			#50; 
			clk=0;
		end
	end


endmodule

