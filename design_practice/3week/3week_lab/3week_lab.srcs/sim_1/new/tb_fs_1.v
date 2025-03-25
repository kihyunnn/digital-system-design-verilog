`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 02:03:05
// Design Name: 
// Module Name: tb_fs_1
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


module tb_fs_1;

    reg x, y, bin;

    wire diff, bout;

    fs_1    UUT(
        .x(x),
        .y(y),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        x = 0; y = 0; bin = 0;
        #100;
        x = 0; y = 1; bin = 0;
        #100;
        x = 1; y = 0; bin = 0;
        #100;
        x = 1; y = 1; bin = 0;
        #100;
        x = 0; y = 0; bin = 1;
        #100;
        x = 0; y = 1; bin = 1;
        #100;
        x = 1; y = 0; bin = 1;
        #100;
        x = 1; y = 1; bin = 1;
        #100;

    end
endmodule
