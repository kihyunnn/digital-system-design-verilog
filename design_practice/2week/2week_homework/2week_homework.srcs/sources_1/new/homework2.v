`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/18 23:43:08
// Design Name: 
// Module Name: homework2
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

module hw2_logic_circuit( //인풋 3개와 아웃풋 1개 선언
    input A,
    input B,
    input C,
    input P,
    output Y
);
    // A xor B xor C xor D xor 구현을 이렇게 했습니다
    // 중간신호 선언
    wire AB_xor;      // B와 C의 AND 결과
    wire CP_xor;  // A와 B의 보수와 C의 보수의 AND 결과
    
    // 중간신호 계산
    assign AB_xor = A ^ B;
    assign CP_xor = C ^ P;
    
    // 최종 출력 계산
    assign Y = AB_xor ^ CP_xor;
endmodule