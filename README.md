# 32bit_MIPS_Pipeline
Verilog를 사용한 32bit MIPS 프로세서 설계 파일입니다.

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

### ALU
ALU란 Arithmetic Logic Unit의 줄임말로 프로세서의 산술연산을 수행하는 모듈입니다. CPU의 일부로 명령어 내에 있는 연산자들에 대해 논리동작을 담당하는 중요한 모듈입니다. ALU는 연산 결과 Result 값이 0일 때 1을 출력해야하며, 아닐 때는 0을 출력해야합니다. ADD연산은 비트를 더하여 올림이 발생하면 Carrry out을 1로하여 덧셈의 결과를 출력합니다. SUB은 b의 입력에 Not 게이트를 통과시켜 보수를 구한 후 1을 더한 2의 보수를 구하여 a의 입력과 더합니다. SLT연산은 a와 b를 비교하여 a가 b보다 작으면 1을 출력하고, 그렇지 않으면 0을 출력합니다. 실제로 구현하기 위하여
a입력과 b입력의 차를 구하여 결과가 양수이면 0을 결과가 음수이면 0을 출력하도록 하였습니다. 32bit ALU에서 SLT연산중 overflow가 발생하면 x bit(0과 1이 아님)를 결과로 출력하였습니다. 실제로는 overflow가 발생하면 overflow의 output 포트에 1, 그렇지 않은경우 0을 출력해야합니다. 이 ALU는 MIPS에서 사용된 ALU와는 다르게 Clock에 비동기적으로 작동하는 ALU입니다.

![image](https://user-images.githubusercontent.com/49228032/138983726-91a1f4f1-e35c-41ac-9b9d-d8a3e417b6b7.png)
![image](https://user-images.githubusercontent.com/49228032/138986310-878c76c7-fa03-40ef-a831-f9fd8d8f7dad.png)

각연산을 결정하는것은 3비트로 된 OP코드이다. 일반적으로 OP코드는 다음과 같습니다.

![image](https://user-images.githubusercontent.com/49228032/138986611-edfa2f09-28c5-4b16-9a6f-2d624a0630b7.png)

### Memory Register File
Memory는 address를 이용해 특정 번지에 데이터를 읽거나 쓰는 구조로 되어있습니다. 컴퓨터 구조에서는 일반적으로 Main Memory(DRAM)에 해당하며, 한 번 쓰여진 데이터는 전원이 꺼지기 전까지 또는 다른 데이터로 덮에 쓰여지기 전까지는 그 값을 유지합니다. Verilog로 설계할 Memory는 아래와 같은 구조를 갖고 있습니다. 32비트의 벡터가 128개로 이루어진 배열의 형태라고 생각할 수 있는데, 이렇게 각각의 벡터는 메모리 주소와 1대1 대응됩니다. 이때 메모리 주소를 9bit를 입력 받아 앞의 7bit는 128개의 라인에 접근하는데 사용되고, 하위 2bit는 byte addressing이라는 기법을 통해 여러 비트의 데이터를 바이트 단위로 접근하는 데 쓰입니다. 

![image](https://user-images.githubusercontent.com/49228032/138985547-1a8e6de7-2996-4cc1-8416-345ea43382a8.png)

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




