module PC(
	input clk,
	input [31:0] in,
	output reg [31:0] pc
);

initial begin
	pc=32'b00000000000000000000000000000000;
end

always @(posedge clk) begin
	if(in == 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|in == 32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz)begin
		pc=32'b00000000000000000000000000000000;
	end 
	else pc = in;
end

endmodule 
