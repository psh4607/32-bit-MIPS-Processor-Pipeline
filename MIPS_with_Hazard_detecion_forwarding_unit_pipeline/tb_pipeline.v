`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:09 05/27/2020
// Design Name:   pipeline_MIPS_32bit
// Module Name:   D:/Xilinx/14.7/Verilog/Pipeline_MIPS/tb_pipeline_MIPS_32bit.v
// Project Name:  Pipeline_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline_MIPS_32bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_pipeline_MIPS_32bit; 

	// Inputs
	reg clk;
	reg rst;
		
	// generate clk 100ms
	always begin 
    #50 clk = 1;
    #50 clk = 0;
	end

	// Outputs
	wire [31:0] Result_output;

	// Instantiate the Unit Under Test (UUT)
	 pipeline uut (
		.clock(clk), 
		.reset(rst),  
		.result(Result_output)
	);
 
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
        
		// reset MIPS at 100ms
		#30 rst = 1;
		#30 rst = 0;
		
		// running MIPS after
	end
      
endmodule

