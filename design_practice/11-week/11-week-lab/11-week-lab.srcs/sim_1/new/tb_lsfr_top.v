`timescale 1ns / 1ps
module tb_lfsr_top();

    reg        clk, rst;
    wire [1:0] seg_en;
    wire [6:0] seg_ab, seg_cd;
    wire       out_s;

    lfsr_top uut (
        clk,
        rst,
        seg_en,
        seg_ab,
        seg_cd,
        out_s
    );

    always #4 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;
        #100;
        rst = 0;
    end

endmodule
