`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 22:56:29
// Design Name: 
// Module Name: rac_4
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


module rac_4(
    input     [3:0] x,
    input     [3:0] y,
    input           cin,
    output          cout,
    output    [3:0] sum
    );

    wire c1, c2, c3;

    fa_1 u0(
        .a(x[0]),
        .b(y[0]),
        .cin(cin),
        .cout(c1),
        .sum(sum[0])
    );

    fa_1 u1(
        .a(x[1]),
        .b(y[1]),
        .cin(c1),
        .cout(c2),
        .sum(sum[1])
    );

    fa_1 u2(
        .a(x[2]),
        .b(y[2]),
        .cin(c2),
        .cout(c3),
        .sum(sum[2])
    );

    fa_1 u3(
        .a(x[3]),
        .b(y[3]),
        .cin(c3),
        .cout(cout),
        .sum(sum[3])
    );
endmodule
