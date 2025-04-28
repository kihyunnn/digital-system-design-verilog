`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/22 06:13:23
// Design Name: 
// Module Name: tb_seq_detector
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

`timescale 1ns/1ps
module tb_seq_detector;
    reg  clk  = 0;
    reg  rstn = 0;
    reg  w100 = 0;
    reg  btn  = 0;
    wire sale;
    wire ret;

    seq_detector UUT (
        .clk  (clk),
        .rstn (rstn),
        .w100 (w100),
        .btn  (btn),
        .sale (sale),
        .ret  (ret)
    );

    //10‑ns 클록
    always #5 clk = ~clk;      // 100 MHz

    initial begin
        //0~12 ns 구간
        #12  rstn = 1;         // 다음 상승에지(15 ns) 전에 reset 해제

        //첫 번째 100원 : 18~27 ns
        #6   w100 = 1;         // 지금 시각 18 ns
        #9   w100 = 0;         // 27 ns → 25 ns 상승에지만 통과

        //두 번째 100원 : 45~54 n
        #18  w100 = 1;
        #9   w100 = 0;

        //세 번째 100원 + 버튼 동시 : 72~81 ns 
        #18  begin w100 = 1; btn = 1; end
        #9   begin w100 = 0; btn = 0; end

        //네 번째 100원 : 99~108 ns
        #18  w100 = 1;
        #9   w100 = 0;

        //버튼 한번 더 : 126~135 ns
        #18  btn = 1;
        #9   btn = 0;

        #50  $finish;
    end

    initial begin
        $monitor("T=%0t | w100=%b btn=%b | sale=%b ret=%b",
                  $time, w100, btn, sale, ret);
        $dumpfile("tb_seq_detector.vcd");
        $dumpvars(0,tb_seq_detector);
    end
endmodule