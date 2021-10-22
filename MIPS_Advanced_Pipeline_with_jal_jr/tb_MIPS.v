`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:15 06/24/2021 
// Design Name: 
// Module Name:    tb_MIPS 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module tb_MIPS; 

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
	 MIPS uut (
		.cclk(clk), 
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