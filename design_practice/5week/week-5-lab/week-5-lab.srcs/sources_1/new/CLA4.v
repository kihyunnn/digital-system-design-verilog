`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:50:14
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

module CLA4(
    input [3:0] A, B,  // 4비트 입력 A, B
    input Cin,         // Carry 입력
    output [3:0] sum, // 4비트 합 출력
    output Gout, Pout, Cout // Generate 출력, Propagate 출력, Carry 출력
    );

    wire [3:0] G, P;   // 4비트 Generate 신호, Propagate 신호 와이어 선언
    wire [3:1] C;   // 3비트 Carry 신호 와이어 선언 (C[1], C[2], C[3])

    // GPFA (Generate Propagate Full Adder) 모듈 인스턴스 생성 및 연결
    GPFA u0 (A[0], B[0], Cin, G[0], P[0], sum[0]); // 0번째 비트 GPFA
    GPFA u1 (A[1], B[1], C[1], G[1], P[1], sum[1]); // 1번째 비트 GPFA, Carry 입력으로 C[1] 사용
    GPFA u2 (A[2], B[2], C[2], G[2], P[2], sum[2]); // 2번째 비트 GPFA, Carry 입력으로 C[2] 사용
    GPFA u3 (A[3], B[3], C[3], G[3], P[3], sum[3]); // 3번째 비트 GPFA, Carry 입력으로 C[3] 사용

    // CLL4 (Carry Lookahead Logic) 모듈 인스턴스 생성 및 연결
    CLL4 m1 (.Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout));
    // GPFA에서 생성된 G, P 신호와 Cin을 CLL4에 입력, CLL4의 출력을 CLA4의 출력에 연결

endmodule