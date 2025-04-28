`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:55:31
// Design Name: 
// Module Name: full_adder
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


// Full Adder (FA) 모듈 - 1비트 덧셈 (캐리 입력 포함)
module full_adder(
    input a,     // 1비트 입력 a
    input b,     // 1비트 입력 b
    input cin,   // 1비트 캐리 입력 (Carry-in)
    output sum,  // 1비트 합계(Sum) 출력
    output cout  // 1비트 캐리 출력 (Carry-out)
);

    // 합계는 세 입력의 XOR 연산
    assign sum = a ^ b ^ cin;
    // 올림은 (a&b) | (a&cin) | (b&cin) 연산
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule