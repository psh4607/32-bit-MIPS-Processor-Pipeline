`timescale 1ns / 1ps

module clk_div(
    input clk,
    input rst,
    output reg clk_op
    );
	 
	 reg [30:0] count;
	 
	 always @(posedge clk or posedge rst) begin
		if(rst) begin
			count <= 0;
			clk_op <= 1'b0;
		end
		else begin
			if(count[30] == 1) begin
				count <= 0;
				clk_op <= ~clk_op;
			end
			else count <= count + 1;
		end
	 end 

endmodule