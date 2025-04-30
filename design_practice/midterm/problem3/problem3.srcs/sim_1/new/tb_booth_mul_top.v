`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:20:10
// Design Name: 
// Module Name: tb_booth_mul_top
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




module tb_booth_mul_top;

    //DUT 연결     reg  clk = 0, rst = 1, start = 0;
    reg  signed [7:0] A = 0, B = 0;
    wire signed [15:0] P;
    wire done;

    booth_mul_top dut (
        .clk(clk), .rst(rst), .start(start),
        .Mcand(A), .Mplier(B),
        .Product(P), .done(done)
    );

    //클럭(10 ns) 
 always #5 clk = ~clk;

    //파형 덤프 
   initial begin
        $dumpfile("radix4_no_task.vcd");
        $dumpvars(0, tb_booth_mul_top);
    end

    //메인 시나리오 
    initial begin
        // 0) 리셋 해제
        #15 rst = 0;

        
        // (1)번케이스 01100110 × 00110011  →  +102 ×  +51   =  5202 (0x1452)
        
        @(negedge clk);
        A     <= 8'b01100110;   // +102
        B     <= 8'b00110011;   // +51
        start <= 1;
        @(negedge clk) start <= 0;            // start 펄스 끝

        // 완료 대기
        @(posedge done);
        if (P === ( $signed(8'b01100110) * $signed(8'b00110011) ))
            $display("PASS 1 : 01100110 × 00110011 = %0d", P);
        else
            $display("FAIL 1 : DUT=%0d, EXP=%0d",
                     P, $signed(8'b01100110) * $signed(8'b00110011));
        @(negedge clk);  wait(done == 0);     // IDLE 복귀 대기


        // (2)번케이스  10100110 × 01100110  →   -90 × +102  = -9180 (0xDBB4)

        @(negedge clk);
        A     <= 8'b10100110;   // -90
        B     <= 8'b01100110;   // +102
        start <= 1;
        @(negedge clk) start <= 0;

        @(posedge done);
        if (P === ( $signed(8'b10100110) * $signed(8'b01100110) ))
            $display("PASS 2 : 10100110 × 01100110 = %0d", P);
        else
            $display("FAIL 2 : DUT=%0d, EXP=%0d",
                     P, $signed(8'b10100110) * $signed(8'b01100110));
        @(negedge clk);  wait(done == 0);

        // 3) 시뮬레이션 종료
        #20 $finish;
    end
endmodule
