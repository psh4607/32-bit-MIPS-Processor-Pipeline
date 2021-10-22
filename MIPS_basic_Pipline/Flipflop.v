`timescale 1ns / 1ps

module Flipflop(
	input clk,
	input rst,
	input a,
	output reg b
    );
	 
	always @(posedge clk, posedge rst)begin
		if(rst) b<=1'b0;	
		else b<=a;
	end

endmodule

module Flipflop2(
	input clk,
	input rst,
	input [1:0] a,
	output reg [1:0] b
    );
	 
	always @(posedge clk, posedge rst)begin
		if(rst) b<=2'b0;	
		else b<=a;
	end
endmodule

module Flipflop5(
	input clk,
	input rst,
	input [4:0] a,
	output reg [4:0] b
    );
	 
	always @(posedge clk, posedge rst)begin
		if(rst) b<=6'b0;	
		else b<=a;
	end
endmodule

module Flipflop6(
	input clk,
	input rst,
	input [5:0] a,
	output reg [5:0] b
    );
	 
	always @(posedge clk, posedge rst)begin
		if(rst) b<=6'b0;	
		else b<=a;
	end
endmodule

module Flipflop32(
	input clk,
	input rst,
	input [31:0] a,
	output reg [31:0] b
    );
	 
	always @(posedge clk, posedge rst)begin
		if(rst) b<=32'b0;	
		else b<=a;
	end

endmodule
