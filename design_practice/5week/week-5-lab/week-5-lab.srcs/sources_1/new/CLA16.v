`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:55:08
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


module CLA16( // 16비트 Carry Lookahead Adder 모듈 선언
    input [15:0] a,  // 16비트 입력 a
    input [15:0] b,  // 16비트 입력 b
    input Cin,       // Carry 입력
    output [15:0] sum, // 16비트 합 출력
    output Gout,     // 전체 Generate 출력
    output Pout,     // 전체 Propagate 출력
    output Cout      // 최종 Carry 출력
    );

    wire [3:0] G;   // 4비트 Generate 신호 와이어 (4개의 CLA4 모듈에서 생성되는 Generate 신호 묶음)
    wire [3:0] P;   // 4비트 Propagate 신호 와이어 (4개의 CLA4 모듈에서 생성되는 Propagate 신호 묶음)
    wire [3:1] C;   // 3비트 Carry 신호 와이어 (CLA4 모듈 간 Carry 전달)

    // 4개의 CLA4 모듈 인스턴스 생성 (4비트씩 덧셈 처리)
    CLA4 adder0 ( .A(a[3:0]),   .B(b[3:0]),   .Cin(Cin),     .sum(sum[3:0]),   .Gout(G[0]), .Pout(P[0])); // 첫 번째 CLA4 (0-3비트)
    CLA4 adder1 ( .A(a[7:4]),   .B(b[7:4]),   .Cin(C[1]),    .sum(sum[7:4]),   .Gout(G[1]), .Pout(P[1])); // 두 번째 CLA4 (4-7비트), 이전 CLA4의 Carry 출력 C[1]을 입력으로 받음
    CLA4 adder2 ( .A(a[11:8]),  .B(b[11:8]),  .Cin(C[2]),    .sum(sum[11:8]),  .Gout(G[2]), .Pout(P[2])); // 세 번째 CLA4 (8-11비트), 이전 CLA4의 Carry 출력 C[2]을 입력으로 받음
    CLA4 adder3 ( .A(a[15:12]), .B(b[15:12]), .Cin(C[3]),    .sum(sum[15:12]), .Gout(G[3]), .Pout(P[3])); // 네 번째 CLA4 (12-15비트), 이전 CLA4의 Carry 출력 C[3]을 입력으로 받음

    // BCLL4 모듈 인스턴스 생성 (오타로 추정, CLL4로 가정) - 4개의 CLA4 모듈에서 생성된 G, P 신호를 이용하여 최종 Carry Lookahead Logic 수행
    CLL4 m1 ( .Gin(G), .Pin(P), .Cin(Cin), .Gout(Gout), .Pout(Pout), .C(C), .Cout(Cout)); // CLA4 모듈들의 G, P 신호와 Cin을 입력으로 받아 최종 Gout, Pout, Cout 및 중간 Carry C 계산

endmodule
