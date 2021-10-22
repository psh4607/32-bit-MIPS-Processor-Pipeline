
module counter(
    input cclk,
    input rst,
    output reg clk_operating
    );
	 
	 reg [24:0] ct;
	 
	 always @(posedge cclk or posedge rst) begin
		if(rst) begin
			ct <= 0;
			clk_operating <= 1'b0;
		end
		else begin
			if(ct[24] == 1) begin
				ct <= 0;
				clk_operating <= ~clk_operating;
			end
			else ct <= ct + 1;
		end
	 end 

endmodule
