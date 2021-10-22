module reg_IFID(
	input clk, rst,
	input [31:0] IFID_PC,
	input [31:0] IFID_inst,
	input IFID_write,
	input IF_flush,
	
	output [31:0] IFIDPC_out ,
	output [31:0] IFIDinst_out
	);
	
	//for IFID register, PC Flipflop
	FFIFID FF_PC [31:0](.clk(clk),.a(IFID_PC),.rst(rst),.IFID_Write(IFID_write),.IF_flush(IF_flush),.b(IFIDPC_out));	
	
	//for IFID register, instruction Flipflop
	FFIFID FF_inst [31:0](.clk(clk),.rst(rst),.a(IFID_inst),.IFID_Write(IFID_write),.IF_flush(IF_flush),.b(IFIDinst_out));

endmodule	

module reg_IDEXE(
	input clk, rst,
	input [1:0] control_wb_in,
	input [2:0] control_mem_in,
	input [3:0] control_ex_in,
	input [31:0] Read_data1_in, Read_data2_in,Sign_extended_in,
	input [4:0] rs_in,		
	input [4:0] dest_1_in, dest_2_in,
	input lw,IF_flush,jal,
	input [31:0] pc_in,
	
	output [1:0] control_wb_out,
	output [2:0] control_mem_out,
	output [3:0] control_ex_out,
	output [31:0] Read_data1_out,Read_data2_out,Sign_extended_out,
	output [4:0] rs_out, dest_1_out, dest_2_out,
	output lw_a,IF_flush_a,jal_a,
	output [31:0] pc_out
);

	FF Flush(.a(IF_flush),.clk(clk),.rst(rst),.b(IF_flush_a));
	
	FF PC [31:0](.a(pc_in),.clk(clk),.rst(rst),.b(pc_out));
	
	FF lw_ff (.a(lw),.clk(clk),.rst(rst),.b(lw_a));
	
	FF Ctrl_wb [1:0] (.a(control_wb_in),.clk(clk),.rst(rst),.b(control_wb_out));
	
	FF Ctrl_mem [2:0] (.a(control_mem_in),.clk(clk),.rst(rst),.b(control_mem_out));
	
	FF Ctrl_ex [3:0] (.a(control_ex_in),.clk(clk),.rst(rst),.b(control_ex_out));
	
	FF Read_data1 [31:0](.a(Read_data1_in),.clk(clk),.rst(rst),.b(Read_data1_out));
	
	FF Read_data2 [31:0](.a(Read_data2_in),.clk(clk),.rst(rst),.b(Read_data2_out));
	
	FF Sign_extend_result [31:0](.a(Sign_extended_in),.clk(clk),.rst(rst),.b(Sign_extended_out));
	
	FF rs_reg [4:0] (.a(rs_in),.clk(clk),.rst(rst),.b(rs_out));
	
	FF dest_1 [4:0](.a(dest_1_in),.clk(clk),.rst(rst),.b(dest_1_out));
	
	FF dest_2 [4:0](.a(dest_2_in),.clk(clk),.rst(rst),.b(dest_2_out));
	
	FF jal_f(.a(jal),.clk(clk),.rst(rst),.b(jal_a)); 
	
endmodule 


module reg_EXEMEM(
	input clk, rst,
	input jal,
	input [1:0] control_wb_in,
	input [2:0] control_mem_in,
	input [4:0] dst_reg_in,
	input [31:0] read_data2_in, pc_in,ALUresult_in,
	
	output jal_a,
	output [1:0] control_wb_out,
	output [2:0] control_mem_out,
	output [4:0] dst_reg_out,
	output [31:0] ALUresult_out, read_data2_out, pc_out
	 
);
	FF pc_IO [31:0](.a(pc_in),.clk(clk),.rst(rst),.b(pc_out));
	
	FF control_wb [1:0](.a(control_wb_in),.clk(clk),.rst(rst),.b(control_wb_out));
	
	FF control_mem [2:0](.a(control_mem_in),.clk(clk),.rst(rst),.b(control_mem_out));
	
	FF ALUresult [31:0](.a(ALUresult_in),.clk(clk),.rst(rst),.b(ALUresult_out));
	
	FF read_data2 [31:0](.a(read_data2_in),.clk(clk),.rst(rst),.b(read_data2_out));
	
	FF dst_reg [4:0](.a(dst_reg_in),.clk(clk),.rst(rst),.b(dst_reg_out));
	
	FF jal_ff(.a(jal),.clk(clk),.rst(rst),.b(jal_a));
	
endmodule 

module reg_MEMWB(
	input clk, rst,
	input jal,
	input [1:0] wb_control_in,
	input [4:0] dst_reg_in,
	input [31:0] read_data_in,address_in,pc_in,
	
	output jal_a,
	output [1:0] wb_control_out,
	output [4:0] dst_reg_out,
	output [31:0] read_data_out,address_out,pc_out
);
	
	FF pc_IO [31:0](.a(pc_in),.clk(clk),.rst(rst),.b(pc_out));
	
	FF wb_control [1:0](.a(wb_control_in),.clk(clk),.rst(rst),.b(wb_control_out));
	
	FF read_data [31:0](.a(read_data_in),.clk(clk),.rst(rst),.b(read_data_out));

	FF address [31:0](.a(address_in),.clk(clk),.rst(rst),.b(address_out));
	
	FF dst_reg [4:0](.a(dst_reg_in),.clk(clk),.rst(rst),.b(dst_reg_out));
	
	FF jal_ff(.a(jal),.clk(clk),.rst(rst),.b(jal_a));
	
endmodule
