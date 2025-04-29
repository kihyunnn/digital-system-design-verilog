`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 04:18:57
// Design Name: 
// Module Name: CLA4
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


// 4개의 GPFFA와 1개의 CLL4 조합으로 만듦
module CLA4(
    input [3:0] A,      // 4비트 A 입력 
    input [3:0] B,      // 4비트 B 입력 
    input Cin,          // 4비트 블록으로 들어오는 캐리 입력 Ci0
    output [3:0] S,     // 4비트 합계(Sum) 출력 
    output g,           // 4비트 그룹 Generate 신호 출력 (CLA16의 .g와 연결)
    output p,           // 4비트 그룹 Propagat 신호 출력 (CLA16의 .p와 연결)
    output Co           // 4비트 블록에서 나가는 캐리 출력 (CLA16의 .Co와 연결)
);

    // 내부 와이어
    wire [3:0] G_bit, P_bit; // 각 GPFFA에서 나오는 비트별 G, P 신호 [G3..G0, P3..P0]
    wire [3:1] C_internal;   // CLL4에서 계산된 블록 내부 캐리 신호 [C3, C2, C1] (CLA4의 Ci1, Ci2, Ci3 역할)
    wire C0_in;              // 비트 0으로 들어가는 캐리 (외부 Cin과 동일)

    // 비트 0으로 들어가는 캐리 입력 연결
    assign C0_in = Cin;

    // 네 개의 GPFFA인스턴스 생성
    // 해당 비트의 덧셈 및 비트별 G/P 신호를 계산
    GPFFA u0( .A(A[0]), .B(B[0]), .Cin(C0_in),          .G(G_bit[0]), .P(P_bit[0]), .Sum(S[0]) ); // 비트 0 처리
    GPFFA u1( .A(A[1]), .B(B[1]), .Cin(C_internal[1]), .G(G_bit[1]), .P(P_bit[1]), .Sum(S[1]) ); // 비트 1 처리 (캐리 입력: CLL4의 C[1])
    GPFFA u2( .A(A[2]), .B(B[2]), .Cin(C_internal[2]), .G(G_bit[2]), .P(P_bit[2]), .Sum(S[2]) ); // 비트 2 처리 (캐리 입력: CLL4의 C[2])
    GPFFA u3( .A(A[3]), .B(B[3]), .Cin(C_internal[3]), .G(G_bit[3]), .P(P_bit[3]), .Sum(S[3]) ); // 비트 3 처리 (캐리 입력: CLL4의 C[3])

    // CLL4 인스턴스 생성
    // 각 GPFFA에서 나온 비트별 G/P 신호와 외부 Cin을 받아 내부 캐리 및 블록 P/G/Cout을 계산
    CLL4 m1( // 슬라이드에서는 m1으로 명명됨
        .Gin(G_bit),        // GPFFA에서 온 비트별 G 신호 [3:0] 연결
        .Pin(P_bit),        // GPFFA에서 온 비트별 P 신호 [3:0] 연결
        .Cin(C0_in),        // 4비트 블록으로 들어오는 캐리 입력 연결 (외부 Cin과 동일)
        .Cout(Co),          // CLL4에서 계산된 4비트 블록 캐리 출력(C4)을 CLA4의 Co 포트에 연결
        .C(C_internal),     // CLL4에서 계산된 내부 캐리 신호 [C3, C2, C1]를 C_internal [3:1] 와이어에 연결
        .Pout(p),           // CLL4에서 계산된 블록 그룹 전파 신호를 CLA4의 p 포트에 연결
        .Gout(g)            // CLL4에서 계산된 블록 그룹 생성 신호를 CLA4의 g 포트에 연결
    );


endmodule