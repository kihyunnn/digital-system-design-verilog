
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:58:02
// Design Name: 
// Module Name: CLA32
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

`timescale 1ns / 1ps
module CLA32(
    input [31:0] a,          // 32비트 입력 a
    input [31:0] b,          // 32비트 입력 b
    input Cin,               // Carry 입력
    output [31:0] sum,         // 32비트 합 출력
    output Cout,             // 최종 Carry 출력
    output Gout,             // 전체 Generate 출력 (최상위 비트 Generate)
    output Pout              // 전체 Propagate 출력 (모든 비트 Propagate)
    );

    wire C16;                 // 16비트 경계 Carry 신호
    wire Gout_lower, Pout_lower; // 하위 16비트 CLA의 Gout, Pout 신호
    wire Gout_upper, Pout_upper; // 상위 16비트 CLA의 Gout, Pout 신호

    // 2개의 CLA16 모듈 인스턴스 생성 - 계층적 구조 구현
    CLA16 cla16_lower (       // 하위 16비트 CLA (0-15비트)
        .a(a[15:0]),           // 입력 a의 하위 16비트 연결
        .b(b[15:0]),           // 입력 b의 하위 16비트 연결
        .Cin(Cin),            // 최하위 Carry 입력 (Cin) 연결
        .sum(sum[15:0]),       // 합의 하위 16비트 출력 연결
        .Cout(C16),           // 하위 16비트 CLA의 Carry 출력 -> C16 신호 연결
        .Gout(Gout_lower),     // 하위 16비트 CLA의 Gout 출력 -> Gout_lower 연결
        .Pout(Pout_lower)      // 하위 16비트 CLA의 Pout 출력 -> Pout_lower 연결
    );

    CLA16 cla16_upper (       // 상위 16비트 CLA (16-31비트)
        .a(a[31:16]),          // 입력 a의 상위 16비트 연결
        .b(b[31:16]),          // 입력 b의 상위 16비트 연결
        .Cin(C16),            // 이전 CLA16 (하위 16비트)의 Carry 출력 (C16)을 Carry 입력으로 사용
        .sum(sum[31:16]),       // 합의 상위 16비트 출력 연결
        .Cout(Cout),           // 상위 16비트 CLA의 Carry 출력 -> 최종 Cout 연결
        .Gout(Gout_upper),     // 상위 16비트 CLA의 Gout 출력 -> Gout_upper 연결
        .Pout(Pout_upper)      // 상위 16비트 CLA의 Pout 출력 -> Pout_upper 연결
    );

    // 전체 Gout, Pout 신호 assign 문 - 최상위 CLA16의 Gout, Pout을 최종 출력으로 연결 (계층적 구조)
    assign Gout = Gout_upper;     // 전체 Gout 출력은 상위 16비트 CLA의 Gout으로 설정
    assign Pout = Pout_upper & Pout_lower; // 전체 Pout 출력은 상위, 하위 16비트 CLA의 Pout AND 연산으로 설정 (모든 비트가 Propagate 되어야 전체 Propagate)

endmodule
