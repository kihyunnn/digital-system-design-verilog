`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:43:37
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


module CLL4(
    input [3:0] Gin, Pin,  // 4비트 Generate 입력 (각 비트 위치에서 생성된 Generate 신호 묶음), 4비트 Propagate 입력 (각 비트 위치에서 생성된 Propagate 신호 묶음)
    input Cin,         // Carry 입력
    output Gout, Pout,    // 전체 Generate 출력, 전체 Propagate 출력
    output [3:1] C,     // 3비트 Carry 출력 (각 비트 위치로 전달되는 Carry 신호, C[1], C[2], C[3])
    output Cout        // 최종 Carry 출력
    );

    // 각 Carry 신호 assign 문 (Carry Lookahead Logic 구현)
    assign C[1] = (Gin[0] | (Pin[0] & Cin)); // 1번째 비트로의 Carry 신호 계산: 0번째 비트에서 Generate 되거나, Propagate 되고 이전 Carry 입력이 있을 때
    assign C[2] = (Gin[1] | (Pin[1] & Gin[0])) | (Pin[1] & Pin[0] & Cin); // 2번째 비트로의 Carry 신호 계산: 1번째 비트에서 Generate 되거나, Propagate 되고 0번째 비트에서 Generate 되거나, Propagate 되고 0번째 비트도 Propagate 되고 이전 Carry 입력이 있을 때
    assign C[3] = (Gin[2] | (Pin[2] & Gin[1])) | (Pin[2] & Pin[1] & Gin[0]) | (Pin[2] & Pin[1] & Pin[0] & Cin); // 3번째 비트로의 Carry 신호 계산: 2번째 비트에서 Generate 되거나, Propagate 되고 1번째 비트에서 Generate 되거나, Propagate 되고 1, 0번째 비트에서 Generate 되거나, Propagate 되고 1, 0번째 비트도 Propagate 되고 이전 Carry 입력이 있을 때

    // 전체 Generate 및 Propagate 신호 assign 문
    assign Gout = Gin[3] | (Pin[3] & Gin[2]) | (Pin[3] & Pin[2] & Gin[1]) | (Pin[3] & Pin[2] & Pin[1] & Gin[0]); // 전체 Generate 신호 계산: 3번째 비트에서 Generate 되거나, Propagate 되고 2번째 비트에서 Generate 되거나, ...
    assign Pout = Pin[3] & Pin[2] & Pin[1] & Pin[0]; // 전체 Propagate 신호 계산: 모든 비트가 Propagate 될 때

    // 최종 Carry 출력 assign 문
    assign Cout = Gout | (Pout & Cin); // 최종 Carry 출력 계산: 전체적으로 Generate 되거나, Propagate 되고 최초 Carry 입력이 있을 때

endmodule