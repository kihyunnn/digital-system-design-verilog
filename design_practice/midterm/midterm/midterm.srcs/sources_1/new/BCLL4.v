`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 04:02:50
// Design Name: 
// Module Name: BCLL4
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


module BCLL4(
    input [3:0] G,  // 4개의 하위 4비트 블록에서 계산된 그룹 생성(Generate) 신호 입력 [G3, G2, G1, G0]
    input [3:0] P,  // 4개의 하위 4비트 블록에서 계산된 그룹 전파(Propagate) 신호 입력 [P3, P2, P1, P0]
    input Cin,      // 이 레벨(16비트 가산기 레벨)로 들어오는 전체 캐리 입력 (가장 하위 4비트 블록의 Cin)
    output Cout,    // 이 레벨에서 나가는 전체 캐리 출력 (BCLL4 논리의 최종 Cout)
    output [3:1] C, // 이 레벨에서 계산되어 다음 4비트 블록으로 전달되는 캐리 입력 신호 출력 [C3, C2, C1]
                    // C[1]은 두 번째 4비트 블록의 Cin, C[2]는 세 번째 블록의 Cin, C[3]은 네 번째 블록의 Cin
    output GP,      // 전체 16비트 가산기에 대한 그룹 전파(Group Propagate) 신호 출력
    output GG       // 전체 16비트 가산기에 대한 그룹 생성(Group Generate) 신호 출력
);

    // 블록 내부 캐리 C[1], C[2], C[3] 계산
    // 이 캐리들은 다음 4비트 CLA 블록의 캐리 입력(Ci)으로 사용됩니다.
    // C[1]은 G0에서 생성되거나 P0를 통해 Cin이 전파될 때 발생
    assign C[1] = G[0] | (P[0] & Cin);
    // C[2]는 G1에서 생성되거나 P1을 통해 G0가 전파되거나 P1, P0를 통해 Cin이 전파될 때 발생
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    // C[3]는 G2에서 생성되거나 P2를 통해 G1이 전파되거나 P2, P1을 통해 G0가 전파되거나 P2, P1, P0를 통해 Cin이 전파될 때 발생
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);

    // 전체 16비트 블록의 그룹 전파(GP) 및 그룹 생성(GG) 신호 계산
    // GP: 모든 4개 블록의 P 신호가 모두 1일 때 전체가 전파 가능
    assign GP = P[3] & P[2] & P[1] & P[0];
    // GG: 마지막 블록에서 생성되거나, 이전 블록에서 생성된 것이 전파되어 오거나...
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);

    // 이 BCLL4 논리 블록에서 나가는 최종 캐리 출력 (전체 16비트 가산기의 Cout)
    // 전체 캐리 출력은 전체 GG가 발생하거나, 전체 GP가 발생하고 Cin이 있을 때 발생
    assign Cout = GG | (GP & Cin);

endmodule
