`timescale 1ns / 1ps

module SignExtend(
	input [15:0] inn,
	output reg [31:0] outt
	);
	integer i ;
	
	always@(*)begin
		for(i = 16; i<=31;i=i+1)begin
			outt[i] = (inn[15]|inn[14]|inn[13]|inn[12]|inn[11]|inn[10]|inn[9]|inn[8]|inn[7]|inn[6]|inn[5]|inn[4]|inn[3]|inn[2]|inn[1]|inn[0]);
		end
		outt[15:0] = inn[15:0];
	end
		
endmodule