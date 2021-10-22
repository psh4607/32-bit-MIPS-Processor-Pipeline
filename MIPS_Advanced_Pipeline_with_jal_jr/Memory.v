`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:34 06/24/2021 
// Design Name: 
// Module Name:    Memory 
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
module data_memory(
	input clk,
	input rst,
	input [4:0] addr,
	input MemRead,			//read = 1 else = 0
	input MemWrite,		//write = 1 else = 0
	input [31:0] Write_Data, 
	output [31:0] Read_Data
    );
	
	integer i;
	
	//원래는 256개의 mem주소가 있어야하지만 우리는 65개만 있는걸로 한다.
	reg [31:0] data_mem[31:0]; 
	
	always @(posedge clk, posedge rst) begin
		case(rst) 		//rst가 1일때는 값을 초기화
			1'b1 : begin
				for(i = 0; i<32; i = i+1) begin
					data_mem[i] <= 32'h0;
				end
					data_mem[12] <= 32'b0000000000_0000000000_0000000111_10;
			end
			default  begin //rst가 들어오지 않았을 경우 항상확인
				if(!MemRead && MemWrite) begin // MemWrite가1이고 MemRead가 0 일때만 메모리 저장
					data_mem[addr[4:0]] <= Write_Data;  
				end
			end
		endcase
	end	
	
	assign Read_Data = (rst) ? 32'b0 : data_mem[addr[4:0]] ;
	
endmodule
