`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:10:59
// Design Name: 
// Module Name: GPFFA
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


// Generate-Propagate Full Adder (GPFFA) 모듈 - 1비트 전가산기 및 G/P 계산
module GPFFA(
    input A,     // 1비트 A 입력
    input B,     // 1비트 B 입력
    input Cin,   // 1비트 캐리 입력
    output G,    // 1비트 캐리 생성(Generate) 신호 출력 (A&B)
    output P,    // 1비트 캐리 전파(Propagate) 신호 출력 (A^B)
    output Sum   // 1비트 합계(Sum) 출력
);

    // 캐리 생성(G) 신호 계산: A와 B가 모두 1이면 캐리 생성
    assign G = A & B;

    // 캐리 전파(P) 신호 계산: A와 B 중 하나만 1이면 캐리 전파 가능
    assign P = A ^ B;

    // 합계(Sum) 계산: P와 Cin의 XOR
    assign Sum = P ^ Cin;

endmodule
