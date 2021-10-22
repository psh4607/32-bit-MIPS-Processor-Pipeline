`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:22:07 04/26/2021 
// Design Name: 
// Module Name:    ALU 
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



module ALU(
	input [2:0] op,
	input [31:0] a_in, [31:0]b_in,
	output reg [31:0] result,
	output reg zero,overflow
   );
	wire less, of, Binv;
	genvar i;
	integer j;
	wire [1:0]ident;
	wire [31:0]temp; 
	wire[32:0]Carry;
	
	assign Carry[0] = 0;
	assign {Binv,ident} =	(op == 3'b000) ? {1'b0,2'b00} : 										//and operation
									(op == 3'b001) ? {1'b0,2'b01} :										//or operation
									(op == 3'b010) ? {1'b0,2'b10} :										//add operation
									(op == 3'b110) ? {1'b1,2'b10} :										//sub operation
									(op == 3'b111) ? {1'b1,2'b10} : {1'bx,2'bx};						//slt operation
									
	assign less = (op == 3'b111 && Binv == 1'b1 && ident == 2'b10) ? 1'b1 : 1'b0;			//define less sig

	generate 																									// instance loop 
		for (i = 0; i<=31; i=i+1)begin : alu
			ALU_1bit u0(.op(ident), .a_in(a_in[i]), .b_in(b_in[i]), .Cin(Carry[i]), .Binv(Binv), .less(1'b1), .result(temp[i]), .Cout(Carry[i+1]));
		end
	endgenerate
	
	assign of = (op == 3'b010 | op == 3'b110 | op == 3'b111)? Carry[31] ^ Carry[32] : 1'b0; //overflow dectector
	
	always@(op,result,zero,temp,of)begin 
		overflow = of;
		result = (op == 3'b110)? temp+1'b1: temp;
		if(op == 3'b111)begin 									//slt operation
			if (result[31] == 1'b1 && of == 0)begin 		// a_in - b_in is negative
				result[0] = result[31];							// result[31] == 1 
			end
			else if (result[31] == 1'b0 && of == 0)begin // a_in - b_in is positive
				result[0] = result[31];  						// result[31] == 0 
			end
			else if (of == 1) result = 32'bx;			// result is unknown by overflow
			for(j = 1; j<32; j=j+1)begin 						//result[1] ~ result[31] set 0;
				result[j] = 0;
			end
		end
		if (result == 0) zero = 1; 							// determine zero sign & reset
		else if (result != 0) zero = 0; 	
	end endmodule


