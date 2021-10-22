`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:36:09 05/20/2021
// Design Name:   memory
// Module Name:   C:/Users/HO_win7/Documents/FPGA/memory/tb_memory.v
// Project Name:  memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_memory;

	// Inputs
	reg [8:0] MemAddr;
	reg MemRead;
	reg MemWrite;
	reg [31:0] Write_Data;

	// Outputs
	wire [31:0] Read_Data;
	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.MemAddr(MemAddr), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Write_Data(Write_Data), 
		.Read_Data(Read_Data)
	);

	initial begin
		// Initialize Inputs
		MemAddr = 0;
		MemRead = 0;
		MemWrite = 0;
		Write_Data = 0;

		// Write Data
      MemWrite = 1; 
		MemAddr = 9'b0_0000_0000; 
		Write_Data = 32'b 00000000_00000010_11001001_00000011;
		#100
		MemAddr = 9'b0_0000_0001;
		Write_Data = 32'b 11111110_10010010_00111111_01010101;
		#100
		MemAddr = 9'b0_0000_0100; 
		Write_Data = 32'b 00001111_11110000_00001111_11110000;
		#100
		MemAddr = 9'b0_0000_1000;
		Write_Data = 32'b 11111111_11111111_11111111_00000000;
		#100
		// Read Data 
		MemWrite = 0; MemRead = 1;
		MemAddr = 9'b0_0000_0000;
		#100
		MemAddr = 9'b0_0000_0001;
		#100
		MemAddr = 9'b0_0000_0100;
		#100
		MemAddr = 9'b0_0000_1000;
		#100
		MemAddr = 9'b0_0000_1100;
		// Add stimulus here

	end
      
endmodule

