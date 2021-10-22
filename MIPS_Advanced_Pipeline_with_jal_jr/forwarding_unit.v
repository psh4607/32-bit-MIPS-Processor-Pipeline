
module forwarding_unit(								
	input [4:0] EXE_rs, EXE_rt, MEM_dst, WB_dst,
	input  E_M_RegWrite, M_W_RegWrite,
	output [1:0] forwardA, forwardB
);
	assign forwardA = (E_M_RegWrite && (MEM_dst) && (MEM_dst == EXE_rs))? 2'b10 :
							(M_W_RegWrite && (WB_dst) && ((MEM_dst != EXE_rs) || !(E_M_RegWrite)) && (WB_dst == EXE_rs))? 2'b01 : 2'b00;
							
	assign forwardB = (E_M_RegWrite && (MEM_dst) && (MEM_dst == EXE_rt))? 2'b10 :
							(M_W_RegWrite && (WB_dst) && ((MEM_dst != EXE_rt)|| (!(E_M_RegWrite))) && (WB_dst == EXE_rt))? 2'b01 : 2'b00;						

endmodule 