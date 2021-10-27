`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:52 05/08/2020 
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
module inst_memory(
	input rst,
	input [4:0] MemAddr,
	input MemRead,			//read = 1 else = 0
	input MemWrite,		//write = 1 else = 0
	input clk,
	input [31:0] Write_Data, 
	output [31:0] Read_Data
    );
	
	integer i;
	reg [31:0] inst_mem[31:0]; 
	
	assign Read_Data = (rst) ? 32'b0 : inst_mem[MemAddr[4:2]] ;
			
	always @(posedge rst) begin
		if(rst) begin
			for(i = 0; i<32; i = i+1) begin
				inst_mem[i] <= 32'h0;
			end
				inst_mem[0] <= 32'b100011_00010_00001_0000_0000_0000_0100; // Label:   lw  $1(rt), 4[imme]($2[rs]) 
            inst_mem[1] <= 32'b000000_00001_00101_00100_00000_100010;   //          sub $4(rd), $1(rs), $5(rt) 
            inst_mem[2] <= 32'b000000_00001_00111_00110_00000_100100;   //          and $6(rd), $1(rs), $7(rt)
            inst_mem[3] <= 32'b000000_00001_01001_01000_00000_100101;   //           or  $8(rd), $1(rs), $9(rt)
            inst_mem[4] <= 32'b000100_00110_00000_1111_1111_1111_1011; //           beq $6(rs), $0(rt), Label(imme)
		end
		
	end
endmodule

module data_memory(
	input clk,
	input rst,
	input [4:0] MemAddr,
	input MemRead,			//read = 1 else = 0
	input MemWrite,		//write = 1 else = 0
	input [31:0] Write_Data, 
	output [31:0] Read_Data
    );
	
	integer i;
	reg [31:0] data_mem[31:0]; 
	
	assign Read_Data = (rst) ? 32'b0 : data_mem[MemAddr[4:2]] ;
	always @(posedge clk, posedge rst) begin
		if(rst) begin
			for(i = 0; i<32; i = i+1) begin
				data_mem[i] <= 32'h0;
			end
				data_mem[7'h3] <= 32'd30;
		end
		else begin
			if(!MemRead && MemWrite) begin
				data_mem[MemAddr[4:2]] <= Write_Data;  
			end
		end
	end	
endmodule


module PC_register(
	input clk,rst, PCwrite,
	input [31:0] PC_in,
	output reg [31:0] PC_out
);
	always@(posedge clk, posedge rst) begin
		if(rst) begin 
			PC_out <= 32'b0;
		end
		else if(PCwrite)begin
			PC_out <= PC_in;
		end
	end
	
endmodule

