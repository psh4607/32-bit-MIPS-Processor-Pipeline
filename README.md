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
- [Memory](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/memory)
- [32bit MIPS](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_basic_Pipline)
- [MIPS (with Hazard detection unit, Forwarding unit)](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_with_Hazard_detecion_forwarding_unit_pipeline)
- [MIPS (with jump, jal, jr)](https://github.com/ho4607/32bit_MIPS_Pipeline/tree/master/MIPS_Advanced_Pipeline_with_jal_jr)

## 상세 설명

### ALU
ALU란 Arithmetic Logic Unit의 줄임말로 프로세서의 산술연산을 수행하는 모듈입니다. CPU의 일부로 명령어 내에 있는 연산자들에 대해 논리동작을 담당하는 중요한 모듈입니다.
ALU는 연산 결과 Result 값이 0일 때 1을 출력해야하며, 아닐 때는 0을 출력해야합니다. 또한 overflow가 발생하면 overflow의 output 포트에 1, 그렇지 않은경우 0을 출력해야합니다. 
이 ALU는 MIPS에서 사용된 ALU와는 다르게 Clock에 비동기적으로 작동하는 ALU입니다.

![image](https://user-images.githubusercontent.com/49228032/138983726-91a1f4f1-e35c-41ac-9b9d-d8a3e417b6b7.png)
![image](https://user-images.githubusercontent.com/49228032/138984629-f23ec49c-0ebd-40a0-b119-1bd4784c56fc.png)


 



