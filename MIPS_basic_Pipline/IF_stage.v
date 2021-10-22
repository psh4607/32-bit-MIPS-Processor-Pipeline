module IF_stage(
	input clk,
	input rst,
	input PCSrc,
	input [31:0] target, 
	
	output [31:0] After_pc,
	output [31:0] inst
	
	);
	wire [31:0] w2,w4,pc;
	//reg [31:0] pc;
	reg PCSrc_r;
	
	initial begin
		PCSrc_r = 1'b0;
	end

	always @(*) begin
	PCSrc_r = PCSrc;
		if(PCSrc_r == 1'bx | PCSrc_r == 1'bz)begin
			PCSrc_r = 1'b0;
		end
	end
		
	//PCSrc Mux
	PCSrc_Mux PCSrc_mux(.a(w4),.b(target),.sel(PCSrc_r),.result(w2));
	
	PC M_PC(.clk(clk),.in(w2),.pc(pc));
	
	//adder
	PC_adder adder_pc(.inn(pc),.outt(w4));
	
	assign After_pc = w4;

	// Fetch from Instruction Memory 
	InstMem InstMem(.clk(clk),.rst(rst),.pc(pc),.inst(inst));
	
	
endmodule

