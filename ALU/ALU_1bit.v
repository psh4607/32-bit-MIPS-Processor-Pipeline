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
	input [1:0] op,
	input a_in,
	input b_in,
	input Cin,
	input Binv,
	input less,
	output reg result,
	output reg Cout
	);
	reg temp;
	
always@(*) begin
	//parse OPcode
	if (less == 1'b1)begin
		if(op == 2'b 00) begin 
			result = a_in && b_in; 
			Cout =0; 
		end 			// and operation
		else if (op == 2'b01) begin 
			result = a_in || b_in; 
			Cout =0; 
		end 	// or operation
		else if (op == 2'b10 && Binv == 0) begin  								// add operation
			 result = a_in ^ b_in ^ Cin;
			 Cout = (a_in && b_in) || (Cin && (a_in ^ b_in));
		end 
		else if (op == 2'b10 && Binv == 1)begin		// subtraction operation
			 result = a_in ^ ~b_in ^ Cin;
			 Cout = (a_in && !b_in) || (Cin && (a_in ^ !b_in));
		end
		else if(op == 2'b11)begin							//slt operation
			if( a_in == 1'b0 & b_in == 1'b0 | a_in == 1'b1 & b_in == 1'b0 | a_in == 1'b1 & b_in == 1'b1)begin
				 result = 1'b0;
			end 
			else if( a_in == 1'b0 & b_in == 1'b1 )begin
				result = 1'b1;
			end
		end
	end
	else if(less == 1'b0)begin	
		result = 0; 
		Cout = 0;
	end
end
endmodule
