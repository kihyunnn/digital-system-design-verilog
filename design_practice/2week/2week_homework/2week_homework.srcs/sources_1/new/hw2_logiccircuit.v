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
    input A, B, C, P,
    output Y
);
    // 중간 신호 선언
    wire AB_xor;    // A와 B의 XOR 결과
    wire CP_xor;    // C와 D의 XOR 결과
    
    // 중간 신호 계산
    assign AB_xor = A ^ B;
    assign CP_xor = C ^ P;
    
    // 최종 출력 계산
    assign Y = AB_xor ^ CP_xor;
endmodule
