`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 01:05:48
// Design Name: 
// Module Name: comp_4_c1
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


module comp_4_c1( 
    input [3:0] a,
    input [3:0] b,
    output a_big,
    output b_big,
    output equal
);

    // 상위 2비트와 하위 2비트 비교용 wire
    wire upper_a_big, upper_b_big, upper_eq;
    wire lower_a_big, lower_b_big, lower_eq;

    // 상위 2비트 비교 
    comp_2 upper_comp ( 
        .a(a[3:2]),
        .b(b[3:2]),
        .a_big(upper_a_big),
        .b_big(upper_b_big),
        .equal(upper_eq)
    );

    // 하위 2비트 비교 
    comp_2 lower_comp (
        .a(a[1:0]),
        .b(b[1:0]),
        .a_big(lower_a_big),
        .b_big(lower_b_big),
        .equal(lower_eq)
    );

    // assignments
    // equal은 상위 2비트와 하위 2비트 모두 같을 때만 1
    // a_big은 상위 2비트가 크거나, 상위 2비트가 같고 하위 2비트가 클 때 1
    // b_big은 상위 2비트가 작거나, 상위 2비트가 같고 하위 2비트가 작을 때 1
    assign equal = upper_eq & lower_eq; 
    assign a_big = upper_a_big | (upper_eq & lower_a_big);
    assign b_big = upper_b_big | (upper_eq & lower_b_big);

endmodule
