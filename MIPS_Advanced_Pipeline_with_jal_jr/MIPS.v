`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:57 06/24/2021 
// Design Name: 
// Module Name:    MIPS 
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
module MIPS(
	input cclk,
	input reset,
	output [31:0] result
    );
	
	wire w2, w41, w42, w43, w44, w45, w46, w47, w48, w55, w56, w57, w61,w62,w63,w64;
	wire [1:0] w32, w33, w34, w35, w60;
	wire [2:0] w36, w37, w38;
	wire [3:0] w39, w40;
	wire [4:0] w7,w8,w9,w10, w49, w50, w19, w20, w21, w22, w23, w24,w25;
	wire [31:0] w1, w3, w4, w5, w6, w11, w12, w13, w14, w15, w16, w17, w18, w26, w27, w28, w29, w30, w31, w65, w66,w67,w68,w51,w52, w53, w54, w58, w59;

	clk_div clk_div(
	 .clk(cclk),
    .rst(reset),
    .clk_op(clk)
    );
	
	//시뮬레이션 할때 주석 제거
	assign clk = cclk;
	
	IF IF(
	.clk(clk),
	.rst(reset),
	.BeqPc(w1),
	.same(w41), 
	.branch(w42),
	.PCwrite(w43),
	.inst(w53), 
	.next_PC(w3),
	.jr_pc(w58),
	.jal_pc(w59),
	.jump(w60)
   );
	
	ID ID(
	.clk(clk),
	.rst(reset),
	.inst(w54),
	.Write_reg(w9),
	.Write_data(w11),
	.Reg_Write(w2),
	.EXE_MemRead(w37[1]),	
	.EXE_rt (w21),
	.same(w41),
	.Read_data1(w12),
	.Read_data2(w14),
	.Sign_extend_res(w17),
	.rs_reg(w49), 
	.desti_1(w19), 
	.desti_2(w20),
	.control_WB(w32),
	.control_MEM(w36),
	.control_EX(w39),
	.IFID_write(w44), 
	.PCwrite(w43),		
	.IF_flush(w45),
	.branch(w42),
	.pc_inn(w4),
	.BeqPc(w1),
	.lw_f(w55),
	.jr_pc(w58),
	.jal_pc(w59),
	.jump(w60),
	.jal(w61),
	.pc_outt(w65),
	.MEM_dst(w24), 
	.WB_dst(w9)
);

	EXE EXE(
	.clk(clk), 
	.rst(reset),
	.control_ex(w40),
	.read_data1(w13),
	.read_data2(w15), 	
	.Sign_extend_res(w18),
	.desti_1(w21), 
	.desti_2(w22),
	.ALU_result(w26),
	.dest_reg_out(w23),
	.EXE_rs(w50), 
	.EXE_rd(w21), 
	.MEM_dst(w24), 
	.WB_dst(w9),
	.E_M_RegWrite(w34[1]), 
	.M_W_RegWrite(w35[1]),
	.WB_writedata(w11), 
	.ALU_Result_MEM(w27),
	.read_data2_prev(w51),   //edit
	.F(w56),
	.IF_flush(w46)
);	

assign result = w26;

	MEM MEM(
	.clk(clk), 
	.rst(reset),
	.control_sig(w38),
	.address(w27),
	.write_data(w52),
	.read_data(w28),
	.address_outt(w30)
);

	WB WB(
	.clk(clk),
	.rst(reset),
	.control_wb(w35),
	.read_address(w29), 
	.pc_address(w31),
	.dst_reg_in(w8),
	.dst_reg_out(w9),
	.RegWrite(w2),
	.write_data(w11),
	.jal(w64),
	.pc(w68)
);
	
	reg_IFID reg_IFID(
	.clk(clk), 
	.rst(reset),
	.IFID_PC(w3),
	.IFID_inst(w53),
	.IFID_write(w44),			
	.IF_flush(w45),
	.IFIDPC_out(w4) ,
	.IFIDinst_out(w54)
	);
	
	reg_IDEXE reg_IDEXE(
	.clk(clk), 
	.rst(reset),
	.control_wb_in(w32),
	.control_mem_in(w36),
	.control_ex_in(w39),
	.Read_data1_in(w12),
	.Read_data2_in(w14),
	.Sign_extended_in(w17),
	.rs_in(w49),		
	.dest_1_in(w19), 
	.dest_2_in(w20),
	.control_wb_out(w33),
	.control_mem_out(w37),
	.control_ex_out(w40),
	.Read_data1_out(w13),
	.Read_data2_out(w15),
	.Sign_extended_out(w18),
	.rs_out(w50), 
	.dest_1_out(w21), 
	.dest_2_out(w22),
	.lw(w55),
	.lw_a(w56),
	.jal(w61),
	.jal_a(w62),
	.pc_in(w65),
	.pc_out(w66),
	.IF_flush(w45),
	.IF_flush_a(w46)
);

	reg_EXEMEM reg_EXEMEM(
	.clk(clk),
	.rst(reset),
	.control_wb_in(w33),
	.control_mem_in(w37),
	.ALUresult_in(w26),
	.read_data2_in(w51),
	.dst_reg_in(w23), 
	.control_wb_out(w34),
	.control_mem_out(w38),
	.ALUresult_out(w27),
	.read_data2_out(w52),
	.dst_reg_out(w24),
	.jal(w62),
	.jal_a(w63),
	.pc_in(w66),
	.pc_out(w67)
);
	reg_MEMWB reg_MEMWB(
	.clk(clk),
	.rst(reset),
	.wb_control_in(w34),
	.read_data_in(w28),
	.address_in(w30),
	.dst_reg_in(w24),
	.wb_control_out(w35),
	.read_data_out(w29),
	.address_out(w31),
	.dst_reg_out(w8),
	.jal(w63),
	.jal_a(w64),
	.pc_in(w67),
	.pc_out(w68)
);
endmodule 