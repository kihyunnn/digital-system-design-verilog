
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 23:12:55
// Design Name: 
// Module Name: rca_16
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
`timescale 1ns / 1ps

module rca_16( // 16-bit Ripple Carry Adder
    input     [15:0] x,
    input     [15:0] y,
    input           cin,
    output          cout,
    output    [15:0] sum
    );

    wire [14:0] c_out; //  wire for carry out of each stage

    fa_1 u0(  // bit 0
        .a(x[0]),
        .b(y[0]),
        .cin(cin),
        .cout(c_out[0]),  
        .sum(sum[0])
    );

    fa_1 u1(  // bit 1
        .a(x[1]),
        .b(y[1]),
        .cin(c_out[0]), // cin is connected to the previous stage
        .cout(c_out[1]), //cout is connected to the next stage
        .sum(sum[1])
    );

    fa_1 u2(  // bit 2
        .a(x[2]),
        .b(y[2]),
        .cin(c_out[1]), //same as above
        .cout(c_out[2]), 
        .sum(sum[2])
    );

    fa_1 u3(  // bit 3
        .a(x[3]),
        .b(y[3]),
        .cin(c_out[2]), 
        .cout(c_out[3]), //
        .sum(sum[3])
    );

    fa_1 u4(  // bit 4
        .a(x[4]),
        .b(y[4]),
        .cin(c_out[3]), 
        .cout(c_out[4]), 
        .sum(sum[4])
    );

    fa_1 u5(  // bit 5
        .a(x[5]),
        .b(y[5]),
        .cin(c_out[4]), 
        .cout(c_out[5]), 
        .sum(sum[5])
    );

    fa_1 u6(  // bit 6
        .a(x[6]),
        .b(y[6]),
        .cin(c_out[5]), 
        .cout(c_out[6]), 
        .sum(sum[6])
    );

    fa_1 u7(  // bit 7
        .a(x[7]),
        .b(y[7]),
        .cin(c_out[6]), 
        .cout(c_out[7]), 
        .sum(sum[7])
    );

    fa_1 u8(  // bit 8
        .a(x[8]),
        .b(y[8]),
        .cin(c_out[7]), 
        .cout(c_out[8]), 
        .sum(sum[8])
    );

    fa_1 u9(  // bit 9
        .a(x[9]),
        .b(y[9]),
        .cin(c_out[8]), 
        .cout(c_out[9]), 
        .sum(sum[9])
    );

    fa_1 u10( // bit 10
        .a(x[10]),
        .b(y[10]),
        .cin(c_out[9]), 
        .cout(c_out[10]), 
        .sum(sum[10])
    );

    fa_1 u11( // bit 11
        .a(x[11]),
        .b(y[11]),
        .cin(c_out[10]), 
        .cout(c_out[11]), 
        .sum(sum[11])
    );

    fa_1 u12( // bit 12
        .a(x[12]),
        .b(y[12]),
        .cin(c_out[11]),
        .cout(c_out[12]), 
        .sum(sum[12])
    );
    fa_1 u13( // bit 13
        .a(x[13]),
        .b(y[13]),
        .cin(c_out[12]), 
        .cout(c_out[13]), 
        .sum(sum[13])
    );
    fa_1 u14( // bit 14
        .a(x[14]),
        .b(y[14]),
        .cin(c_out[13]), 
        .cout(c_out[14]), 
        .sum(sum[14])
    );
    fa_1 u15( // bit 15
        .a(x[15]),
        .b(y[15]),
        .cin(c_out[14]), 
        .cout(cout), 
        .sum(sum[15])
    );
endmodule
