
module hazard_detection(
	input clk,rst,
	input [4:0] ID_rs, ID_rt, EXE_rt,
	input EXE_MemRead,
	input IF_flush,
	
	output reg PCwrite, IFID_write ,control_mux_sel
);
	wire hazard ;
	
	always @ (*) begin
		if(rst) begin
			PCwrite <= 0;
			IFID_write <= 0;
			control_mux_sel <= 0;
		end
		else begin
			//PCwrite <= !(hazard);
			PCwrite <= 1'b1;
			IFID_write <= !(hazard);
			control_mux_sel <= hazard;
		end
	end
	
	//assign hazard = (EXE_MemRead) & ((ID_rs == MEM_dst)|(ID_rt == MEM_dst) | (ID_rs == WB_dst)|(ID_rt == WB_dst));
	assign hazard = ((EXE_MemRead != 0) && ((ID_rs == EXE_rt) || (ID_rt == EXE_rt)))| IF_flush;

endmodule 