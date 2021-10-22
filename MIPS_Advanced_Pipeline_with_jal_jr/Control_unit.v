`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:37 06/24/2021 
// Design Name: 
// Module Name:    Control_unit 
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
module control_unit(
	input [5:0] opcode,
	input [31:0] inst,
	output reg [1:0] control_wb,
	output reg [2:0] control_mem,
	output reg [3:0] control_ex,
	///new
	output reg IF_flush, branch,
	//new jal, jr
	output reg [1:0]jump, 
	output reg jal
);
	
	always@(*) begin
			//if opcode is Rtype
			if(opcode == 6'h0)begin 
					control_wb <= 2'b10;
					control_mem <= 3'b000;
					control_ex <= 4'b0101;
					IF_flush <= 1'b0;
					branch <= 1'b0;
					jump <= 2'b00;
					jal <= 1'b0;
			end
			//if opcode is lw
			else if (opcode == 6'b100011) begin	
					control_wb <= 2'b11;
					control_mem <= 3'b010;
					control_ex <= 4'b1000;
					IF_flush <= 1'b0;
					branch <= 1'b0;
					jump <= 2'b00;
					jal <= 1'b0;
			end
			//if opcode is sw
			else if (opcode == 6'h2b) begin		
					control_wb <= 2'b0X;
					control_mem <= 3'b001;
					control_ex <= 4'b100X;
					IF_flush <= 1'b0;
					branch <= 1'b0;
					jump <= 2'b00;
					jal <= 1'b0;
			end
			//if opcode is beq
			else if (opcode == 6'b000100) begin		
					control_wb <= 2'b0X;
					control_mem <= 3'b100;
					control_ex <= 4'b001X;
					IF_flush <= 1'b1;
					branch <= 1'b1;
					jump <= 2'b00;
					jal <= 1'b0;
			end
			//if opcode is jal
			else if(opcode == 6'b000011) begin		
					control_wb <= 2'b11;
					control_mem <= 3'b001;
					control_ex <= 4'bx000;
					IF_flush <= 1'b1; 
					branch <= 1'b0;
					jump <= 2'b10;
					jal <= 1'b1;
			end
			//if opcode is jr
			else if(opcode == 6'b001100) begin	
					control_wb <= 2'b11;
					control_mem <= 3'b000;
					control_ex <= 4'b0000;
					IF_flush <= 1'b0; 
					branch <= 1'b0;
					jump <= 2'b01;
					jal <= 1'b0;
			end
			//others 
			else begin
				control_wb <= 2'b00;
			end
	end
endmodule

module ALU_Ctrl(
	input [5:0] func,
	input [1:0] ALUOP,

	output reg [3:0] ALU_Ctrl_sig
);
	always@(*) begin
		if(ALUOP == 2'b00) begin
			ALU_Ctrl_sig <= 4'b0010;
		end
		else begin
			if(ALUOP[1] == 1) begin
				if(func[3:0] == 4'b0000) ALU_Ctrl_sig <= 4'b0010;
				else if(func[3:0] == 4'b0010) ALU_Ctrl_sig <= 4'b0110;
				else if(func[3:0] == 4'b0100) ALU_Ctrl_sig <= 4'b0000;
				else if(func[3:0] == 4'b0101) ALU_Ctrl_sig <= 4'b0001;
				else if(func[3:0] == 4'b1010) ALU_Ctrl_sig <= 4'b0111;
				else 	ALU_Ctrl_sig <= 4'b0;
			end
			else begin
				ALU_Ctrl_sig <= 4'b0110;
			end
		end
	end
endmodule