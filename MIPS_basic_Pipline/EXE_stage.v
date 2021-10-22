`timescale 1ns / 1ps

module EXE_stage(

	input [31:0] pc,
	input [5:0] funct,
	input [31:0] regData1, regData2,
	input [31:0] ext_immed,
	input ALUSrc, RegDst,  				//EXE stage control sig
	input [1:0] ALUOp,		 				//EXE stage control sig
	input [4:0] rt, rd,
	
	
	output reg [4:0] regDesti,
	output reg [31:0] target,
	output [31:0] Alu_result,
	output zero,
	output [31:0] A_regData2
   );
	
	reg [31:0] ex_immed;
	reg [31:0] w1;
	wire [2:0] w2;
	wire [31:0] w3;
		
	assign A_regData2 = regData2;
	
	always @(*)begin
		
		//RegDst Mux 
		case(RegDst) 
			1'b0 : regDesti <= rt;
			1'b1 : regDesti <= rd;
			default : regDesti <= 5'bx;
		endcase
		
		//ALUSrc Mux
		case(ALUSrc) 
			1'b0 : w1 <= regData2;
			1'b1 : w1 <= ext_immed;
			default : w1 <= 32'bx;
		endcase
		
		//Left 2 shifter
		ex_immed = ext_immed << 2;
		
		//branch target adder
		target = pc + ex_immed;
		
	end
	assign w3 = w1;
		//ALU Control unit
		ALU_control ALU_C(.ALUOp(ALUOp),.funct(funct),.out(w2));
		//32bit ALU behavioral model 
		ALU ALU(.inn1(regData1),.inn2(w3),.control(w2),.result(Alu_result),.zero(zero));
		
endmodule




