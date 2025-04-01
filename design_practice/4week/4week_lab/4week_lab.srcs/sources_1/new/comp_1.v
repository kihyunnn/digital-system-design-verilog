`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 01:05:26
// Design Name: 
// Module Name: comp_1
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


module comp_1(
    input a,
    input b,
    output a_big,
    output b_big,
    output equal
    );


    assign equal = ~(a ^ b);
    assign a_big = (a & ~b);
    assign b_big = (~a & b);
endmodule
