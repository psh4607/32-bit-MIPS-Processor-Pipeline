`timescale 1ns / 1ps

module registers(clk,rst,RegWrite,addr1,addr2,addr3,data,out1,out2);

input clk, rst;
input RegWrite;  		//파일에 쓸지를 결정 (1 -> 쓰기)
input [4:0] addr1;	//읽기, 첫번째 reg addr
input [4:0] addr2;	//읽기, 두번째 reg addr
input [4:0] addr3;	//쓰기, 쓸 reg addr
input [31:0] data;	//쓰기, 쓸 데이터

output [31:0] out1;	//읽기, 첫번째 reg addr
output [31:0] out2;	//읽기, 두번째 reg addr

reg [31:0] regFile [31:0];
integer i;

initial begin //레지스터 파일의 초기값은 0으로 저장되어있음 (3,4,6번 레지스터 제외) 
		  regFile[0] = 32'b00000000000000000000000000000000; 		
        regFile[1] = 32'b00000000000000000000000000000000;
        regFile[2] = 32'b00000000000000000000000000000000; 
        regFile[3] = 32'b00000000000000000000000000000011; // 3번 레지스터 값 3
        regFile[4] = 32'b00000000000000000000000000000011; // 4번 레지스터 값 3
        regFile[5] = 32'b00000000000000000000000000000000; 	
        regFile[6] = 32'b00000000000000000000000001000000; // 6번 레지스터 값 0x40
        regFile[7] = 32'b00000000000000000000000000000000; 
        regFile[8] = 32'b00000000000000000000000000000000;
        regFile[9] = 32'b00000000000000000000000000000000;
        regFile[10] = 32'b00000000000000000000000000000000;
        regFile[11] = 32'b00000000000000000000000000000000;
        regFile[12] = 32'b00000000000000000000000000000000;
        regFile[13] = 32'b00000000000000000000000000000000;
        regFile[14] = 32'b00000000000000000000000000000000;

	end

		assign out1 = regFile[addr1];
		assign out2 = regFile[addr2];

	always@ (posedge clk, posedge rst) begin
		if(rst)begin
			for(i=0;i<=31;i=i+1)begin // 원래는 모두 0으로 초기화 되는게 맞음
				regFile[i] <= 32'b00000000000000000000000000000000; 	
			end
			regFile[3] <= 32'b00000000000000000000000000000011; // 3번 레지스터 값 3으로 초기화
			regFile[4] <= 32'b00000000000000000000000000000011; // 4번 레지스터 값 3으로 초기화
			regFile[6] <= 32'b00000000000000000000000001000000; // 6번 레지스터 값 0x40으로 초기화
		end
		else if(RegWrite) begin
			regFile[addr3] <= data;
		end
	end

endmodule

