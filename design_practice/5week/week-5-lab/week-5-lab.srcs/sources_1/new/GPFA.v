`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:35:02
// Design Name: 
// Module Name: GPFA
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


module GPFA(
    input   A, B, Cin,  // 입력: A, B (덧셈할 두 비트), Cin (Carry 입력)
    output  G, P, Sum   // 출력: G (Generate 신호), P (Propagate 신호), Sum (합 비트)
    );

    assign G = A & B;  // Generate 신호 계산: A와 B가 모두 1이면 Carry 발생 (G = 1)
    assign P = A ^ B;  // Propagate 신호 계산: A 또는 B 중 하나만 1이면 Carry 전파 가능 (P = 1)
    assign Sum = P ^ Cin; // Sum (합) 비트 계산: Propagate 신호와 Carry 입력 XOR 연산 (P XOR Cin)

endmodule
