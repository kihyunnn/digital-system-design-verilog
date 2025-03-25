`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 01:48:33
// Design Name: 
// Module Name: hs_1
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


module hs_1( //data flow Modeling
    input    x, // Minuend input
    input    y,// Subtrahend input
    output    diff, // Difference output
    output   borr // Borrow output
    );

    assign diff = x ^ y; // Calculate difference 
    assign borr = (~x) & y; // Calculate borrow 
endmodule
