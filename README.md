# 32bit_MIPS_Pipeline
A 32-bit MIPS processor developed in Verilog based on pipeline.

## 프로그램 환경
- Windows 7
- Xilinx ISE 14.7
- Spartan 6 FPGA Family

## 사용언어
- Verilog (*.v)

## 구현 목록
- [1bit Adder](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/1bitAdder)
- [4bit Adder](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/4bitAdder)
- [ALU(Not clock synchronized )](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/ALU)
- [Memory Register File](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/memory)
- [32bit MIPS](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_basic_Pipline)
- [MIPS (with Hazard detection unit, Forwarding unit)](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_with_Hazard_detecion_forwarding_unit_pipeline)
- [MIPS (with jump, jal, jr)](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_Advanced_Pipeline_with_jal_jr)

## 상세 설명

### 32bit MIPS
파이프라인(Pipeline)을 기반으로 가장 간단한 MIPS 명령어를 지원하는 프로세서를 설계했습니다. 특정 Instruction을 읽어 동작을 수행하고 그 결과를 출력하는 과정을 담은 시뮬레이션 파일입니다. Spartan 6 FPGA보드 위에 올려보면 올바르게 동작하는 것을 확인 할 수 있습니다. 파이프라인 구조는 Instruction-level의 Paralleslism을 위한 기술로, CPU의 퍼포먼스(Throughtput)을 올리는데 효율적인 구조입니다. 앞서 설계한 Single-Cycle 방식과는 달리 명령어 집합을 단계를 나누어 여러 Cycle에 동시에 병렬처리 함으로써 파이프라인을 가능하게 합니다.

**지원하는 Instruction**
- ADD
- sub
- LW
- SW
- BEQ

해당 코드는 IF, ID, EXE, MEM, WB의 5단계의 Stage로 나누었으며, 각 단계에 Flipflop 형태의 Latch를 두어 레지스터에 상태정보를 저장하고 넘겨주도록 설계되었습니다. 여기서 사용한 ALU 모듈은 앞서 설계한 ALU와는 다르게 Clock Synchronized 방식으로 설계되어있으며, FPGA위에 올리기 위해 Behavior level로 설계되었습니다. 기존의 방식으로는 Resource 관련 Overhead 이슈로 올라가지 못합니다. 또한 Positive Edge 일 때 reset 하도록 설계했습니다. 마찬가지로 FPGA 호환 문제 때문입니다. 일반적으로 Negative Edge에서 reset을 하지만 FPGA에서 Negative Edge에서 reset이 되지 않는 이이슈가 있습니다. 

테스트를 위한 Instruction Memory에 다음의 명령어가 입력되어 있습니다. 또한 테스트벤치에서 결과를 확인하기 위해 ALU의 Result를 Pipeline 모듈의 output으로 볼수 있게 연결하였습니다.


`$3=3, $4=3, $6=0x40, Mem[0x40]=30`
```assembly
Label: add $2, $3, $4
       sub $1, $3, $4
       Lw  $5, 0($6)
       Beq $3, $4, Label
```

```Verilog
memInstdata[4] = 32'b000000_00011_00100_00010_00000_100000;
memInstdata[8] = 32'b000000_00011_00100_00001_00000_100010;
memInstdata[12] = 32'b100011_00110_00101_0000_0000_0000_0000;
memInstdata[16] = 32'b000100_00011_00100_1111111111111100;
```

테스트벤치에서 돌린 시뮬레이션 결과를 확인해 봅시다.

![image](https://user-images.githubusercontent.com/49228032/138995814-207cb7c7-78ae-49d2-a008-6222a862fd76.png)

Result의 시뮬레이션 결과값은 IF, ID, 이후 2사이클 뒤에 EXE를 시작으로 6 0 64 0.순으로 올게 나오는 것을 확인 할 수 있습니다. 만약 FPGA위에서 올돌리고 싶다면 counter의 주석을 제거하고 아래의 `assign clk = cclk;` 부분을 주석처리 하면 됩니다. 또한 [테스트벤치 파일](https://github.com/ho4607/32bit_MIPS_Pipeline/blob/master/MIPS_basic_Pipline/tb_MIPS.v)의 input을 알맞게 수정하면 됩니다. 

```Verilog
	...
	
	// from wb wire
	wire [31:0] wwb1;
	wire clk;

//	counter clk_d(
//		.cclk(cclk),
//		.rst(rst),
//		.clk_operating(clk)
//	);
	
	//Comment out the code below if you want to run it on FPGA 
	//If you want to run it in a testbench, uncomment it.  
	assign clk = cclk;
	//--------------------------------------------------------
	
	IF_stage IF(
	...
```

### MIPS (with Hazard detection unit, Forwarding unit)

이 MIPS 파일은 앞서 설계한 파이프라인 기반 MIPS 프로세서에 Hazard detection Unit과 이를 Control하기 위한 Fowarding unit을 추가한 Verilog 파일입니다. Hazard를 관리하고 branch의 flush까지 관리해주는 MIPS 프로세서입니다. 구조는 다음 그림과 같습니다.   

![image](https://user-images.githubusercontent.com/49228032/138997950-b291798b-d085-4596-b368-9bba11cfb4c5.png)

Instruction의 fuct와 ALUop라는 control signal을 가져와 시행하며 ALUOP[1]이 0이 되는 경우 ALU Control sig가 4비트 0010 나오도록 하였고 ALUOP[1]이 1이 되는 경우 if 문을 사용해 각
instruction 수행에 필요한 연산이 이루어질 수 있도록 4bit alu ctrl_sig를 output으로 가지도록 하였습니다. 이 또한 아래의 OP코드 테이블을 참고하여 만들었습니다. 

![image](https://user-images.githubusercontent.com/49228032/139008866-2e8ee458-5f98-4632-a921-0d20ba282b8c.png)

**지원하는 Instruction**
- ADD
- sub
- LW
- SW
- BEQ

우선 레지스터에 다음의 값으로 초기화 되어있습니다.

`mem[0xC] = 30 , $1 = 20, $2 = 8, $5 = 2, $7 = 1, $9 = 3, $6 = 0 `

테스트를 위한 Instruction Memory에 다음의 명령어가 입력되어 있습니다. 또한 테스트벤치에서 결과를 확인하기 위해 ALU의 Result를 Pipeline 모듈의 output으로 볼수 있게 연결하였습니다. 위의 MIPS와 마찬가지로 Positive Edge 일 때 reset 하도록 설계했습니다. 마찬가지로 FPGA 호환 문제 때문입니다. 일반적으로 Negative Edge에서 reset을 하지만 FPGA에서 Negative Edge에서 reset이 되지 않는 이이슈가 있습니다.

```assembly
Label : Lw  $1, 4($2)
	Sub $4, $1, $5
	And $6, $1, $7
	Or  $8, $1, $9
	Beq $6, $0, Label
```
```Verilog
inst_mem[0] <= 32'b100011_00010_00001_0000_0000_0000_0100;  // Label:   lw  $1(rt), 4[imme]($2[rs]) 
inst_mem[1] <= 32'b000000_00001_00101_00100_00000_100010;   //          sub $4(rd), $1(rs), $5(rt) 
inst_mem[2] <= 32'b000000_00001_00111_00110_00000_100100;   //          and $6(rd), $1(rs), $7(rt)
inst_mem[3] <= 32'b000000_00001_01001_01000_00000_100101;   //          or  $8(rd), $1(rs), $9(rt)
inst_mem[4] <= 32'b000100_00110_00000_1111_1111_1111_1011;  //          beq $6(rs), $0(rt), Label(imme)
```

테스트벤치 결과확인을 하면, 다음의 결과를 확인할 수 있습니다. 

![image](https://user-images.githubusercontent.com/49228032/139009727-8731b7cb-e9f9-4eb8-995d-c02c94bd746b.png)

LW와 SUB 사이는 LOAD USE HAZARD가 발생하여 1개의 stall 이 발생합니다. 그렇기에 LW와 SUB사이에 결과 값 0이 존재해야합니다. 먼저 lw의 ALU 연산 값인 4+8=12가 먼저 나오고 그 다음에 STALL값 0 그 이후 SUB 명령어에 의해 28(이때 AND의 RS에 MEM 포워딩이 동작합니다.), AND 명령어에 의해 0 값이 그 다음에 나와야하고, OR 명령어에 의해 31 그리고 BEQ 의 SUB연산에 의해 0이 나와 올바르게 동작하는 것을 알 수 있습니다.

### MIPS (with jump, jal, jr)

**지원하는 Instruction**
- ADD
- sub
- LW
- SW
- BEQ
- Jal
- Jr

앞서 설계한 Hazard detection와 Fowarding Unit을 포함하는 MIPS에 Jal, Jr instruction을 수행할 수 있도록 설계한 Verilog 파일입니다. 이번에 설계한 이 프로세서는 다음의 상당히 간단한 C코드를 어셈블리어로 변환해서 돌립니다. 또한 변수 a, b, c, d는 다음의 레지스터에 대응되게 해야합니다. 

`a : $a0`
`b : $a1`
`c : $a2`
`d : $a3`
`values for results : $v0`

```C
int sum(int a, int b, int c, int d){
	int e;
	e = (a-b)+(c-d)
	return e;
}
```

그리하여 다음의 C코드를 어셈블리어 코드로 바꾸고 이를 instruction Memory에 넣어주었습니다.
```assembly
main:	
	Jal 	sum
	Lw	$1, 4($2)
	Sub	$8, $4, $5
	Sub 	$9, $6, $7
	add 	$10, $8, $9
	jr	$ra
```

``` Verilog
mem_Inst_data[0] <= 32'b000011_00000_00000_00000_00000_000100; 
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
```

테스트벤치 결과확인을 하면, 다음의 결과를 확인할 수 있습니다. 

![image](https://user-images.githubusercontent.com/49228032/139015917-e8f1fcf1-73a7-4020-95d4-a5bab05a550c.png)

결과 EXE 단계에서 ALU의 결과를 RESULT로 하는 결과를 살펴보면 예측했던 0 0 0 0 1 1 2 4 0 12 값을 갖음을 알 수 있습니다. 이때 JAL에서 EXE 단계까지 3사이클이 걸려 0이 출력된 후 lw는 jal에 의해 flush됩니다. 그래서 4번째 사이클도 결과가 0 입니다. 그후 sub 명령어를 두번 실행하여 ALU 결과 1을 두번 출력합니다. 그리고 7번째 add 명령어에 의해 2가 출력 되는 것을 볼 수 있고, 이후 JR명령어가 ID 단계에서 작동하여 PC 값은 $ra 레지스터에 담겨있던 4로 이동하지만, 명령어 WB 단계까지 진행해야 하므로 ALU 결과가 $ra에 담
겨있는 4가 되는 것을 알 수 있습니다. 이후 점프 된 PC에 의해 lw 명령어의 결과인 12가 출력되었습니다. 

결과를 살펴보면 IF 단계의 PC 값이 4가 되고 4사이클 뒤인 MEM 단계에서 30을 가져오는 것으로 보아 lw 명령어도 잘 동작합니다. 그리고 해저드 또한 Flush가 발생할 때 잘 나타나므로 올게 동작합니다.


### ALU
ALU란 Arithmetic Logic Unit의 줄임말로 프로세서의 산술연산을 수행하는 모듈입니다. CPU의 일부로 명령어 내에 있는 연산자들에 대해 논리동작을 담당하는 중요한 모듈입니다. ALU는 연산 결과 Result 값이 0일 때 1을 출력해야하며, 아닐 때는 0을 출력해야합니다. ADD연산은 비트를 더하여 올림이 발생하면 Carrry out을 1로하여 덧셈의 결과를 출력합니다. SUB은 b의 입력에 Not 게이트를 통과시켜 보수를 구한 후 1을 더한 2의 보수를 구하여 a의 입력과 더합니다. SLT연산은 a와 b를 비교하여 a가 b보다 작으면 1을 출력하고, 그렇지 않으면 0을 출력합니다. 실제로 구현하기 위하여
a입력과 b입력의 차를 구하여 결과가 양수이면 0을 결과가 음수이면 0을 출력하도록 하였습니다. 32bit ALU에서 SLT연산중 overflow가 발생하면 x bit(0과 1이 아님)를 결과로 출력하였습니다. 실제로는 overflow가 발생하면 overflow의 output 포트에 1, 그렇지 않은경우 0을 출력해야합니다. 이 ALU는 MIPS에서 사용된 ALU와는 다르게 Clock에 비동기적으로 작동하는 ALU입니다.

![image](https://user-images.githubusercontent.com/49228032/138983726-91a1f4f1-e35c-41ac-9b9d-d8a3e417b6b7.png)
![image](https://user-images.githubusercontent.com/49228032/138989092-4ed4c6a8-d602-4b16-9bb0-fd291163f64f.png)

각연산을 결정하는것은 3비트로 된 OP코드이다. 일반적으로 OP코드는 다음과 같습니다.

![image](https://user-images.githubusercontent.com/49228032/138986611-edfa2f09-28c5-4b16-9a6f-2d624a0630b7.png)

위의 SLT 연산 결과 확인해 봅시다. (a_in > b_in 일 때 오버플로우가 발생하지 않은 경우)

![image](https://user-images.githubusercontent.com/49228032/138989499-e7b75827-8b75-468c-85f2-bcef718bbde1.png)



a_in이 b_in보다 클 경우 오버플로우가 발생하지 않으면서, result에는 0이 Zero에는 1이 출력되는 것을 볼 수 있습니다.

### Memory Register File
Memory는 address를 이용해 특정 번지에 데이터를 읽거나 쓰는 구조로 되어있습니다. 컴퓨터 구조에서는 일반적으로 Main Memory(DRAM)에 해당하며, 한 번 쓰여진 데이터는 전원이 꺼지기 전까지 또는 다른 데이터로 덮에 쓰여지기 전까지는 그 값을 유지합니다. Verilog로 설계할 Memory는 아래와 같은 구조를 갖고 있습니다. 32비트의 벡터가 128개로 이루어진 배열의 형태라고 생각할 수 있는데, 이렇게 각각의 벡터는 메모리 주소와 1대1 대응됩니다. 이때 메모리 주소를 9bit를 입력 받아 앞의 7bit는 128개의 라인에 접근하는데 사용되고, 하위 2bit는 byte addressing이라는 기법을 통해 여러 비트의 데이터를 바이트 단위로 접근하는 데 쓰입니다. 

![image](https://user-images.githubusercontent.com/49228032/138989648-c8cb2039-50df-44b8-bbd0-6708b8839aa2.png)

 **데이터를 쓰는 경우**
 
 ![image](https://user-images.githubusercontent.com/49228032/138985949-8e092a79-8dee-4aa4-8620-6856b51f09ce.png)
 
데이터를 쓰는 경우에 Read_Data가 유효하지 않으므로 xxxx가 출력되는 것을 확인할 수 있고, 원하는 MemAddr에 값에 넣는 것을 확인할 수 있습니다. 아직 올바르게 써졌나 확인할 수 없지만 이후에 Read하는 경우에서 올바르게 써졌는지 확인할 수 있습니다. 

**데이터를 읽는 경우**

![image](https://user-images.githubusercontent.com/49228032/138986045-24d257f1-20ca-4f52-8b25-e7f1bf12c6aa.png)

데이터를 읽는 경우를 살펴봅시다. Testbench 코드에서 각각의 메모리주소에 다음과 같은 이진수를 썼습니다.

1. MemAddr = 9'b0_0000_0000;  Write_Data = 32'b 00000000_00000010_11001001_00000011;
2. MemAddr = 9'b0_0000_0001; Write_Data = 32'b 11111110_10010010_00111111_01010101;
3. MemAddr = 9'b0_0000_0100; Write_Data = 32'b 00001111_11110000_00001111_11110000;
4. MemAddr = 9'b0_0000_1000; Write_Data = 32'b 11111111_11111111_11111111_00000000;

이제 결과를 살펴보면 9’b0_0000_0000 과 9’b0_0000_0001은 뒤에 2개의 비트를 제외하여 주소를 찾아가므로 동일한 11111110_10010010_00111111_01010101(2)를 반환합니다. 그리고 9'b0_0000_0100를 요청했을 때 올바르게 32'b 00001111_11110000_00001111_11110000;를 반환하는 것을 알 수 있습니다. 하지만 입력하지 않은 메모리 주소인 9'b0_0000_1100를 요청하면 xxx를 반환합니다. 따라서 메모리가 올바르게 동작하는 것을 확인할 수 있습니다.


```
