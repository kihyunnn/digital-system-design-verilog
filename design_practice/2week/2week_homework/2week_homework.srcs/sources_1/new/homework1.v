`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/16 19:13:14
// Design Name: 
// Module Name: homework1
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

module hw1_logic_circuit( //인풋 3개와 아웃풋 1개 선언
    input A,
    input B,
    input C,
    output Y
);
    // BC + AB'C' 구현을 이렇게 했습니다
    // 중간신호 선언
    wire BC;      // B와 C의 AND 결과
    wire AB_not_C_not;  // A와 B의 보수와 C의 보수의 AND 결과
    
    // 중간신호 계산
    assign BC = B & C; //&은 and를 뜻함
    assign AB_not_C_not = A & ~B & ~C;
    
    // 최종 출력 계산
    assign Y = BC | AB_not_C_not; // |은 or을 뜻함
endmodule
