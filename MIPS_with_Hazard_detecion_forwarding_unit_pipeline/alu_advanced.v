`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:21:07 06/11/2020 
// Design Name: 
// Module Name:    alu 
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
module alu(
	input rst,
	input [31:0] in_data_32_1,
	input [31:0] in_data_32_2,
	input [3:0] opcode,
	output reg [31:0] out_data_32,
	output zero
    );
	 
	assign zero = (out_data_32 == 0)? 1'b1 : 1'b0;
	
	always @(*) begin
			case(opcode)
				4'b0000 : out_data_32 <= (in_data_32_1) & (in_data_32_2); 
				4'b0001 : out_data_32 <= (in_data_32_1) | (in_data_32_2); 
				4'b0010 : out_data_32 <= in_data_32_1 + in_data_32_2;
				4'b0110 : out_data_32 <= in_data_32_1 - in_data_32_2;
				4'b0111 : out_data_32 <= (in_data_32_1 < in_data_32_2)? 1 : 0;
				default : out_data_32 <= 32'b0;
			endcase
	end
	
endmodule

module MUX_21(
	input a,
	input b,
	input sel,
	output result
	);
	
	assign result = (sel)? b : a;
endmodule

module MUX_41(				///////////////////new module
	input a,
	input b,
	input c,
	input [1:0] sel,
	output result
);
	assign result = (sel == 2'b10) ? c :
						 (sel == 2'b01) ? b : a; 
endmodule

module control_unit(
	input [5:0] opcode,
	output reg [1:0] control_wb,
	output reg [2:0] control_mem,
	output reg [3:0] control_ex,

	
	///new
	output reg IF_flush, branch,
	//new2
	output reg [1:0] jump,
	output reg jal
);
	always@(*) begin
		case(opcode)
			6'h0 : begin		//Rtype
				control_wb <= 2'b10;
				control_mem <= 3'b000;
				control_ex <= 4'b0101;
				IF_flush <= 1'b0;
				branch <= 1'b0;
				jump <= 2'b00;
				jal <= 1'b0;
				end
			6'b100011 : begin		//lw
				control_wb <= 2'b11;
				control_mem <= 3'b010;
				control_ex <= 4'b1000;
				IF_flush <= 1'b0;
				branch <= 1'b0;
				jump <= 2'b00;
				jal <= 1'b0;
				end
			6'h2b : begin		//sw
				control_wb <= 2'b0X;
				control_mem <= 3'b001;
				control_ex <= 4'b100X;
				IF_flush <= 1'b0;
				branch <= 1'b0;
				jump <= 2'b00;
				jal <= 1'b0;
				end
			6'b000100: begin		//beq
				control_wb <= 2'b0X;
				control_mem <= 3'b100;
				control_ex <= 4'b001X;
				IF_flush <= 1'b1;
				branch <= 1'b1;
				jump <= 2'b00;
				jal <= 1'b0;
				end
			6'b000011: begin		//jal
				control_wb <= 2'b11;
				control_mem <= 3'b000;
				control_ex <= 4'bxxxx;
				IF_flush <= 1'b1;
				branch <= 1'b1;
				jump <= 2'b10;
				jal <= 1'b1;
				end
			6'b010011: begin		//jr
				control_wb <= 2'b11;
				control_mem <= 3'b000;
				control_ex <= 4'bxxxx;
				IF_flush <= 1'b1;
				branch <= 1'b1;
				jump <= 2'b01;
				jal <= 1'b0;
				end
		endcase
	end
endmodule

module alu_control(
	input [5:0] func,
	input [1:0] ALUOP,
	output reg [3:0] alu_control_signal
);
	always@(*) begin
		if(ALUOP == 2'b00) begin
			alu_control_signal <= 4'b0010;
		end
		else begin
			if(ALUOP[1] == 1) begin
				case(func[3:0])  
					4'b0000 : alu_control_signal <= 4'b0010;
					4'b0010 : alu_control_signal <= 4'b0110;
					4'b0100 : alu_control_signal <= 4'b0000;
					4'b0101 : alu_control_signal <= 4'b0001;
					4'b1010 : alu_control_signal <= 4'b0111;
					default : alu_control_signal <= 4'b0;
				endcase
			end
			else begin
				alu_control_signal <= 4'b0110;
			end
		end
	end
endmodule

module forwarding_unit(								///new module
	input [4:0] EXE_rs, EXE_rt, MEM_dstreg, WB_dstreg,
	input  E_M_RegWrite, M_W_RegWrite,
	output [1:0] forwardA, forwardB
);
	assign forwardA = (E_M_RegWrite && (MEM_dstreg != 0) && (MEM_dstreg == EXE_rs))? 2'b10 :
							(M_W_RegWrite && (WB_dstreg != 0) && ((MEM_dstreg != EXE_rs) || (E_M_RegWrite == 0)) && (WB_dstreg == EXE_rs))? 2'b01 : 2'b00;
							
	assign forwardB = (E_M_RegWrite && (MEM_dstreg != 0) && (MEM_dstreg == EXE_rt))? 2'b10 :
							(M_W_RegWrite && (WB_dstreg != 0) && ((MEM_dstreg != EXE_rt)|| ((E_M_RegWrite) == 0)) && (WB_dstreg == EXE_rt))? 2'b01 : 2'b00;						

endmodule

module hazard_detection(
	input clk,
	input [4:0] ID_srcreg, ID_rtreg, EXE_rt,
	input EXE_MemRead,rst,
	
	output reg PCwrite, IFID_write ,control_mux_sel 
);
	wire hazard = !((EXE_MemRead != 0) && ((ID_srcreg == EXE_rt) || (ID_rtreg == EXE_rt)));
	always @ (*) begin
		if(rst) begin
			PCwrite <= 0;
			IFID_write <= 0;
			control_mux_sel <= 0;
		end
		else begin
			PCwrite <= hazard;
			IFID_write <= hazard;
			control_mux_sel <= !hazard;
		end
	end

endmodule 