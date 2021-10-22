`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:16:34 05/20/2021 
// Design Name: 
// Module Name:    memory 
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
module memory(
		input [8:0] MemAddr, 
		input MemRead,
		input MemWrite,
		input [31:0] Write_Data,
		output reg [31:0] Read_Data
    );
		reg [6:0] MemAddr_R;
		reg [31:0] mem[0:127] ;
		
		always @(*)begin
			MemAddr_R = MemAddr >> 2;
			
			if (MemWrite == 1 && MemRead == 0)begin // Write to Memory
				mem[MemAddr_R] = Write_Data;
			end
			else if (MemWrite == 0 && MemRead == 1)begin // read to Memory
				Read_Data = mem[MemAddr_R];
			end
		end

endmodule
