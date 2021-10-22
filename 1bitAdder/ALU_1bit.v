//x`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:20:16 04/26/2021 
// Design Name: 
// Module Name:    ALU_1bit 
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
module ALU_1bit(
	input [1:0]op,
	input a_in,
	input b_in,
	input Cin,
	input Binv,
	input less,
	output reg result,
	output reg Cout,
	output of
	);
	reg temp;
	
always@(*) begin
	//parse OPcode
	if(op == 2'b 00)begin
		// and operation
		 result = a_in & b_in;
	end 
	
	else if (op == 2'b 01) begin
		// or operation
		 result = a_in | b_in;  
	end 
	
	else if (op == 2'b 10 & Binv == 1'b0) begin
		// add operation
		 result = a_in ^ b_in ^ Cin;
		 Cout = (a_in & b_in) | (Cin &(a_in ^ b_in));
	end 
	
	else if (op == 2'b10 & Binv == 1'b0)begin
		// subtraction operation
		 temp = 1'b0;
		 temp = b_in;
		 temp = !temp + Binv;
		 result = a_in ^ temp ^ Cin;
       Cout = (a_in & temp) | (Cin &(a_in ^ temp));
	end
	
	else if(op == 2'b11)begin
		//slt operation
		if( a_in == 1'b0 & b_in == 1'b0 | a_in == 1'b1 & b_in == 1'b0 | a_in == 1'b1 & b_in == 1'b1)begin
			 result = 1'b0;
		end else if( a_in == 1'b0 & b_in == 1'b1 )begin
			 result = 1'b1;
		end
	end
end
endmodule
