`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 02:02:44
// Design Name: 
// Module Name: fs_1
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


module fs_1(
    input     x,
    input     y,
    input     bin,
    output    diff,
    output    bout

    );

    wire d1,b1,b2;

    hs_1 u0(
        .x(x),
        .y(y),
        .diff(d1),
        .borr(b1)
    );
    hs_1 u1(
        .x(d1),
        .y(bin),
        .diff(diff),
        .borr(b2)
    );
    assign bout = b1 | b2;


endmodule
