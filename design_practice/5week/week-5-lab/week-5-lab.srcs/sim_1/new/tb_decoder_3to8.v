
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/07 00:22:37
// Design Name: 
// Module Name: tb_decoder_3to8
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

module tb_decoder_3to8;

    reg [2:0] tb_in;
    reg tb_en;
    wire [7:0] tb_out;

    decoder_3to8 DUT (
        .in(tb_in),
        .en(tb_en),
        .out(tb_out)
    );

    initial begin
        tb_in = 3'b0;
        tb_en = 1'b0;

        // 테스트 케이스 1: en=0 (Disable)
        tb_en = 1'b0;
        #100;

        // 테스트 케이스 2: en=1, in=0
        tb_en = 1'b1;
        tb_in = 3'd0;
        #100;

        // 테스트 케이스 3: en=1, in=3
        tb_en = 1'b1;
        tb_in = 3'd3;
        #100;

        // 테스트 케이스 4: en=1, in=5
        tb_en = 1'b1;
        tb_in = 3'd5;
        #100;

        // 테스트 케이스 5: en=1, in=7
        tb_en = 1'b1;
        tb_in = 3'd7;
        #100;

        $finish;
    end

endmodule