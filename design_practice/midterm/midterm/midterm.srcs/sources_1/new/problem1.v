
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 09:16:27
// Design Name: 
// Module Name: problem1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// problem1_logic.v
// 1번 문제 Part (2)의 최상위 로직 모듈

`timescale 1ns / 1ps

module problem1(
    // 입력 포트
    input [7:0] X_1, Y_1, X_2, Y_2, // 8비트 부호 없는 입력
    // 출력 포트
    output [15:0] A,        // CSM1 결과
    output [15:0] B,        // CSM2 결과
    output [15:0] C,        // CLA16 결과
    output [19:0] D         // 최종 BCD 결과
);

    // --- 내부 연결 와이어 ---
    wire [15:0] wire_A; // CSM1의 출력 Z
    wire [15:0] wire_B; // CSM2의 출력 Z
    wire [15:0] wire_C; // CLA16의 출력 Sum

    // --- 1. Carry Save Multiplier 1 인스턴스 ---
    // 입력 X_1, Y_1 -> 출력 wire_A (16비트)
    csa_multiplier_8x8 csm1_inst (
        .A(X_1),
        .B(Y_1),
        .Z(wire_A)
    );

    // --- 2. Carry Save Multiplier 2 인스턴스 ---
    // 입력 X_2, Y_2 -> 출력 wire_B (16비트)
    csa_multiplier_8x8 csm2_inst (
        .A(X_2),
        .B(Y_2),
        .Z(wire_B)
    );

    // --- 3. Carry Lookahead Adder 인스턴스 ---
    // 입력 wire_A, wire_B, Cin=0 -> 출력 wire_C (16비트)
    CLA16 cla_inst (
        .A(wire_A),
        .B(wire_B),
        .Cin(1'b0),      // 문제 요구: Carry in = 0
        .Sum(wire_C),
        .Cout(),         // 사용 안 함
        .GP(),           // 사용 안 함
        .GG()            // 사용 안 함
    );

    // --- 4. BCD Converter 인스턴스 ---
    // 입력 wire_C -> 출력 D (20비트 BCD)
    bcd_converter_16_to_20 bcd_inst (
        .binary_in(wire_C),
        .bcd_out(D)     // 최종 출력 D에 연결
    );

    // --- 5. (선택 사항) 중간 결과 외부 출력 연결 ---
    assign A = wire_A;
    assign B = wire_B;
    assign C = wire_C;

endmodule