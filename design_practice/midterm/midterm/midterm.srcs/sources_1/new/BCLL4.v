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
    input [3:0] G,  // 하위 4비트 Generate 
    input [3:0] P,  // 하위 4비트 Propagate 
    input Cin,      // 전체 캐리 입력 Cin
    output Cout,    // 전체 캐리 출력 Cout
    output [3:1] C, // 전달 캐리 입력 신호 출력 
                    
    output GP,      // 전체 16비트 가산기에 대한 Group Propagate 
    output GG       // 전체 16비트 가산기에 대한 Group Generate 
);


    // C[1]은 G0에서 생성되거나 P0를 통해 Cin이 전파될 때 발생
    assign C[1] = G[0] | (P[0] & Cin);
    // C[2]는 G1에서 생성되거나 P1을 통해 G0가 전파 or P1, P0를 통해 Cin이 전파될 때 발생
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & Cin);
    // C[3]는 G2에서 생성되거나 P2를 통해 G1이 or P2, P1을 통해 G0가 전파 or P2, P1, P0를 통해 Cin이 전파될 때 발생
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & Cin);

    // GP: 모든 4개 블록의 P 신호가 모두 1일 때 전체가 전파 가능
    assign GP = P[3] & P[2] & P[1] & P[0];
    // GG: 마지막 블록에서 생성or 이전 블록에서 생성된 것이 전파되어 오거나
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);

    // 최종 캐리
    // 전체 캐리 출력은 전체 GG가 발생하거나, 전체 GP가 발생하고 Cin이 있을 때 발생
    assign Cout = GG | (GP & Cin);

endmodule
