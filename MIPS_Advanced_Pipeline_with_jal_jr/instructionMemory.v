module instruction_memory(
	input clk,
	input rst,
	input [31:0]MemAddr,
	input MemRead,			//read = 1 else = 0
	input MemWrite,		//write = 1 else = 0
	input [31:0] Write_Data, 
	output [31:0] Read_Data
    );
	
	integer i;
	// define instruction memory
	reg [31:0] mem_Inst_data[48:0]; 

	always @(posedge rst) begin
		case(rst) 
			1'b1 : begin 
					for(i = 0; i<48; i = i+1) begin
						mem_Inst_data[i] <= 32'h0;
					end
					//원래는 아무값도 없어야 하지만, 컴파일 되어 명령어 코드가 들어가 있음.
					mem_Inst_data[0] <= 32'b000011_00000000000000000000000100; 
					mem_Inst_data[1] <= 32'b100011_00010_00001_00000_00000_000100; 
					mem_Inst_data[4] <= 32'b000000_00100_00101_01000_00000_100010; 
					mem_Inst_data[5] <= 32'b000000_00110_00111_01001_00000_100010; 
					mem_Inst_data[6] <= 32'b000000_01000_01001_01010_00000_100000; 
					mem_Inst_data[7] <= 32'b001100_11111_00000_00000_00000_100000; 
					mem_Inst_data[8] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[9] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[10] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[11] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[12] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[13] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[14] <= 32'b000000_00000_00000_00000_00000_000000; 
					mem_Inst_data[15] <= 32'b000000_00000_00000_00000_00000_000000; 
				end
		endcase
	end
	
	assign Read_Data = (rst) ? 32'b0 : mem_Inst_data[MemAddr[31:2]];
	
endmodule
