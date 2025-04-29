`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 04:37:53
// Design Name: 
// Module Name: CLA16
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

// CLA16.v
// 16비트 Carry Lookahead Adder
// 4개의 CLA4와 BCLL4를 사용해 16비트 덧셈 수행

module CLA16(
    input [15:0] A,      // 16비트 입력 A
    input [15:0] B,      // 16비트 입력 B
    input Cin,           // 초기 캐리 입력
    output Cout,         // 최종 캐리 출력
    output [15:0] Sum,   // 16비트 합
    output GP,           // 전체 그룹 전파 출력
    output GG            // 전체 그룹 생성 출력
);

    wire [3:0] tGG, tGP;  // 각 CLA4 블록의 그룹 생성/전파 신호
    wire [4:0] C;         // 블록별 캐리 출력
    wire [3:0] Ci;        // 블록별 캐리 입력

    assign Ci[0] = Cin;   // 첫 블록 캐리 입력

    // 4개의 4비트 CLA 인스턴스
    CLA4 u0(
        .A(A[3:0]), .B(B[3:0]), .Cin(Ci[0]),
        .S(Sum[3:0]), .Co(C[1]), .g(tGG[0]), .p(tGP[0])
    );

    CLA4 u1(
        .A(A[7:4]), .B(B[7:4]), .Cin(Ci[1]),
        .S(Sum[7:4]), .Co(C[2]), .g(tGG[1]), .p(tGP[1])
    );

    CLA4 u2(
        .A(A[11:8]), .B(B[11:8]), .Cin(Ci[2]),
        .S(Sum[11:8]), .Co(C[3]), .g(tGG[2]), .p(tGP[2])
    );

    CLA4 u3(
        .A(A[15:12]), .B(B[15:12]), .Cin(Ci[3]),
        .S(Sum[15:12]), .Co(C[4]), .g(tGG[3]), .p(tGP[3])
    );

    // Block Carry Lookahead Logic (BCLL4) 인스턴스
    BCLL4 u4(
        .G(tGG), .P(tGP), .Cin(Ci[0]),
        .C({Ci[3], Ci[2], Ci[1]}),
        .Cout(Cout), .GP(GP), .GG(GG)
    );

endmodule
