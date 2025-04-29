`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:55:21
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    input a,   // 1비트 입력 a
    input b,   // 1비트 입력 b
    output sum,// 1비트 합계(Sum) 출력
    output carry // 1비트 올림(Carry) 출력
);

    // 합계는 XOR 연산
    assign sum = a ^ b;
    // 올림은 AND 연산
    assign carry = a & b;

endmodule