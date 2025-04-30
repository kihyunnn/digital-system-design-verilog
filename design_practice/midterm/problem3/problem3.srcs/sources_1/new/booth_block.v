`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:31:26
// Design Name: 
// Module Name: booth_block
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


module booth_block #(parameter N = 8)(
    input  [2:0] bits,
    input  signed [N-1:0] multiplicand,
    output signed [N:0] partial_product
);
    wire single, double, neg;

    booth_encoder_logic enc (
        .x2i_minus1(bits[0]),
        .x2i(bits[1]),
        .x2i_plus1(bits[2]),
        .single(single),
        .double(double),
        .neg(neg)
    );

    booth_selector_logic #(.N(N)) sel (
        .multiplicand(multiplicand),
        .single(single),
        .double(double),
        .neg(neg),
        .partial_product(partial_product)
    );
endmodule