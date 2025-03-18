`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 01:57:39
// Design Name: 
// Module Name: hw2_logiccircuit
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


module hw2_logiccircuit(
    input A, B, C, P, //4개 입력 신호 선언
    output Y // 1개 출력 신호 선언
);
    // 중간 신호 선언(wire)
    wire AB_xor;    // A와 B의 XOR 결과를 저장 할 중간 신호
    wire CP_xor;    // C와 P의 XOR 결과를 저장 할 중간 신호
    
    // 중간 신호 계산
    assign AB_xor = A ^ B; //A 와 B를 xor 연산함
    assign CP_xor = C ^ P; //C와 P를 xor 연산함
    
    // 최종 출력 계산
    assign Y = AB_xor ^ CP_xor;
endmodule
