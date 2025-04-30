`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:30:40
// Design Name: 
// Module Name: booth_encoder_logic
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

module booth_encoder_logic (
    input  x2i_minus1,
    input  x2i,
    input  x2i_plus1,
    output single,
    output double,
    output neg
);
    assign single = x2i ^ x2i_minus1;
    assign double = (~x2i_plus1 &  x2i &  x2i_minus1) |
                    ( x2i_plus1 & ~x2i & ~x2i_minus1);
    assign neg = x2i_plus1;
endmodule