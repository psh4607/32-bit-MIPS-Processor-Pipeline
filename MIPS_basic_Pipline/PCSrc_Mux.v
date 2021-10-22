
module PCSrc_Mux(
	input [31:0]a,
	input [31:0]b,
	input sel,
	output reg [31:0] result
	);
	
	always@(*)begin
		//result = (sel == 1'b1)? b : a;
		case (sel)
			1'b1 : result = b;
			default : result = a;
		endcase
		
	end
endmodule

