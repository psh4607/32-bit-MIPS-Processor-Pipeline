`timescale 1ns / 1ps

module PC_adder(
	input [31:0] inn,
	output [31:0] outt
);
	
	assign outt = inn + 4;
	
	
endmodule 

module ALU (
	input [31:0] inn1, inn2,
	input [2:0] control,
	output reg [31:0] result,
	output reg zero
	); 
	
	always@(*)begin
		//and operation
		if(control == 3'b000)begin  
			result <= inn1 & inn2;
			if(result == 0) zero <= 1;
			else if(result != 0 ) zero <= 0;
			else zero <= 1'bx;
		end
		// or operation
		else if(control == 3'b001) begin 
			result <= inn1 | inn2;
			if(result == 0) zero <= 1;
			else if(result != 0 ) zero <= 0;
			else zero <= 1'bx;
		end
		// add operation
		else if(control == 3'b010) begin 
			result <= inn1 + inn2;
			if(result == 0) zero <= 1;
			else if(result != 0 ) zero <= 0;
			else zero <= 1'bx;
		end
		//sub operation
		else if(control == 3'b110) begin 
			result <= inn1 - inn2;
			if(result == 0) zero <= 1;
			else if(result != 0 ) zero <= 0;
			else zero <= 1'bx;
		end
		// slt operation
		else if (control == 3'b111) begin 
			result <= inn1 - inn2;
			if(result == 0) zero <= 1;
			else if(result != 0 ) zero <= 0;
			else zero <= 1'bx;
		end
	end
	
endmodule 

module ALU_control(
	input [1:0] ALUOp,
	input [5:0] funct,
	output reg [2:0] out
	);

	always@(*)begin
		//ALU control unit
		case(ALUOp)
			2'b00 :  out <= 3'b010; 	// add for lw/sw
			2'b01	:	out <= 3'b110;	// sub for beq
			2'b10	:	begin 			// r-type
				// add operation
				if (funct[3:0] == 4'b0000)begin 	//funct = 5'bxx0000
					out <= 3'b010;
				end
				//sub operation
				else if (funct[3:0] == 4'b0010)begin 	//funct = 5'bxx0010
					out <= 3'b110;
				end
				// and operation
				else if (funct[3:0] == 4'b0100) begin 	//funct = 5'bxx0100
					out <= 3'b000;
				end
				//or operation 
				else if (funct[3:0] == 4'b0101)begin 	//funct = 5'bxx0101
					out <= 3'b001;
				end
				//slt operation
				else if (funct[3:0] == 4'b1010)begin 	//funct = 5'bxx1010
					out <= 3'b111;
				end
			end	
			default : out <= 3'bx;
		endcase
	end
endmodule 