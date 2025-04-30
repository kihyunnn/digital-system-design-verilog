`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:18:25
// Design Name: 
// Module Name: cla
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


// carry_lookahead_adder 대용 : 합성·시뮬 둘 다 OK
module cla #(parameter N = 16)(
    input  wire signed [N-1:0] A,
    input  wire signed [N-1:0] B,
    output wire signed [N-1:0] SUM
);
    assign SUM = A + B;
endmodule

