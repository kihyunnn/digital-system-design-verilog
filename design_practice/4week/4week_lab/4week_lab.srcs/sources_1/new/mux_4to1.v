`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 22:10:52
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input       a,
    input       b,
    input       c,
    input       d,
    input [1:0] sel,
    output      out

    );

    assign out = (sel == 2'b00) ? a :
                (sel == 2'b01) ? b :
                (sel == 2'b10) ? c :
                (sel == 2'b11) ? d : 1'b0;

endmodule
