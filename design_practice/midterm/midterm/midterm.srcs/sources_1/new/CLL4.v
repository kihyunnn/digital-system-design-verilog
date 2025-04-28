`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:15:18
// Design Name: 
// Module Name: CLL4
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

// Carry Lookahead Logic for 4-bit block (CLL4) 모듈
// 슬라이드 19 상단 우측 코드 기반입니다.
// 4비트 블록 내부의 캐리 신호와 블록 레벨 P/G/Cout을 계산합니다.
module CLL4(
    input [3:0] Gin,    // 4비트 블록의 각 비트에서 온 캐리 생성(Generate) 신호 [G3, G2, G1, G0]
    input [3:0] Pin,    // 4비트 블록의 각 비트에서 온 캐리 전파(Propagate) 신호 [P3, P2, P1, P0]
    input Cin,          // 4비트 블록으로 들어오는 캐리 입력 (Ci0)
    output Cout,        // 4비트 블록에서 나가는 캐리 출력 (C4)
    output [3:1] C,     // 4비트 블록 내부 캐리 신호 출력 [C3, C2, C1] (Ci1, Ci2, Ci3)
    output Pout,        // 4비트 블록의 그룹 전파(Propagate) 신호 출력
    output Gout         // 4비트 블록의 그룹 생성(Generate) 신호 출력
);

    // 4비트 블록 내부 캐리 신호 C[1], C[2], C[3] 계산
    // C[1]: 비트 1로 들어가는 캐리 = G0에서 생성되거나 P0를 통해 Cin이 전파될 때
    assign C[1] = Gin[0] | (Pin[0] & Cin);
    // C[2]: 비트 2로 들어가는 캐리 = G1에서 생성되거나 P1을 통해 C1이 전파될 때 (C1은 위에서 계산)
    assign C[2] = Gin[1] | (Pin[1] & C[1]);
    // C[3]: 비트 3로 들어가는 캐리 = G2에서 생성되거나 P2를 통해 C2이 전파될 때 (C2는 위에서 계산)
    assign C[3] = Gin[2] | (Pin[2] & C[2]);

    // 4비트 블록의 그룹 전파(Pout) 및 그룹 생성(Gout) 신호 계산
    // Pout: 모든 비트가 전파 가능해야 블록 전파
    assign Pout = Pin[3] & Pin[2] & Pin[1] & Pin[0];
    // Gout: 마지막 비트에서 생성되거나, 이전 비트에서 생성된 것이 전파되어 오는 등
    assign Gout = Gin[3] | (Pin[3] & Gin[2]) | (Pin[3] & Pin[2] & Gin[1]) | (Pin[3] & Pin[2] & Pin[1] & Gin[0]);

    // 4비트 블록에서 나가는 최종 캐리 출력 (비트 3에서 나가는 캐리 = 비트 4로 들어가는 캐리)
    // Cout = Gout에서 생성되거나 Pout을 통해 Cin이 전파될 때
    assign Cout = Gout | (Pout & Cin);

endmodule
