`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/23 20:48:59
// Design Name: 
// Module Name: fa_1
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


module fa_1(
    input a,
    input b,
    input cin,
    output sum,
    );

    wire s1, c1, c2;


    ha_1 u0(
        .a(a),
        .b(b),
        .sum(s1),
        .cout(c1)
    );
    ha_1 u1(
        .a(s1),
        .b(cin),
        .sum(sum),
        .cout(c2)
    );
    assign cout = c1 | c2;
endmodule
