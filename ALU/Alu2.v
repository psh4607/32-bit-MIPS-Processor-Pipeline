`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:12 05/06/2021 
// Design Name: 
// Module Name:    Alu2 
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
module Alu2(
	input [2:0] op,
	input [31:0] a_in,
	input [31:0] b_in,
	output wire [31:0] result,
	output zero,
	output overflow
   );
	
	wire less, Cout, of;
	integer i;

assign result = (op == 3'b000) ? for (i = 0; i<31; i=i+1)begin 
				ALU_1bit u0 [31:0](
					.op(2'b00), 
					.a_in(a_in[i]), 
					.b_in(b_in[i]), 
					.Cin(1'b0), 
					.Binv(1'b0), 
					.less(1'b0), 
					.result(result[i]), 
					.Cout(Cout)
				);
			end ;


		if (op == 3'b001)begin // or operate
			for (i = 0; i<31; i=i+1)begin 
				ALU_1bit u0 [31:0](
					.op(2'b00), 
					.a_in(a_in[i]), 
					.b_in(b_in[i]), 
					.Cin(1'b0), 
					.Binv(1'b0), 
					.less(1'b0), 
					.result(result[i]), 
					.Cout(Cout)
				);
			end
		end 
		else if (op == 3'b010)begin // add operate
			for (i=0; i<31; i=i+1)begin 
				ALU_1bit u0 [31:0](
					.op(2'b00), 
					.a_in(a_in[i]), 
					.b_in(b_in[i]), 
					.Cin(1'b0), 
					.Binv(1'b0), 
					.less(1'b0), 
					.result(result[i]), 
					.Cout(Cout)
				);
			end
		end
		else if (op == 3'b110)begin // subtraction operate
			for (i=0; i<31; i=i+1)begin 
				ALU_1bit u0 [31:0](
					.op(2'b00), 
					.a_in(a_in[i]), 
					.b_in(b_in[i]), 
					.Cin(1'b0), 
					.Binv(1'b0), 
					.less(1'b0), 
					.result(result[i]), 
					.Cout(Cout)
				);
			end
		end
		else if (op == 3'b111)begin // SLT operation
		end
end

endmodule
