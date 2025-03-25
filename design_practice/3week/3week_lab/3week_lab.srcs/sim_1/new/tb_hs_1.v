`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 01:48:54
// Design Name: 
// Module Name: tb_hs_1
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


module tb_hs_1;

    //input
    reg x, y;

    //output
    wire diff, borr;

    hs_1    UUT(
        .x(x),
        .y(y),
        .diff(diff),
        .borr(borr)
    );


    //test code
    initial begin
        x = 0; y = 0;
        #100;
        x = 0; y = 1;
        #100;
        x = 1; y = 0;
        #100;
        x = 1; y = 1;
        #100;
    end


endmodule
