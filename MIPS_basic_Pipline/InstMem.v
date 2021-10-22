module InstMem(
	input clk,
	input rst,
	input [31:0] pc,
	output reg [31:0] inst
   );
	 
	reg [31:0] memInstdata [31:0];

	
	initial begin
	#50;
			  memInstdata[4] = 32'b000000_00011_00100_00010_00000_100000;
			  memInstdata[8] = 32'b000000_00011_00100_00001_00000_100010;
			  memInstdata[12] = 32'b100011_00110_00101_0000_0000_0000_0000;
			  memInstdata[16] = 32'b000100_00011_00100_1111111111111100;
	end
	
	always @(*)begin
		inst = memInstdata[pc];
	end
	
	always @(posedge clk , posedge rst)begin
		if (rst)begin
			  memInstdata[4] = 32'b000000_00011_00100_00010_00000_100000;
			  memInstdata[8] = 32'b000000_00011_00100_00001_00000_100010;
			  memInstdata[12] = 32'b100011_00110_00101_0000_0000_0000_0000;
			  memInstdata[16] = 32'b000100_00011_00100_1111111111111101;
		end
		
	end
	
	
endmodule 