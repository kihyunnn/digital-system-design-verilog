
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/15 15:40:18
// Design Name: 
// Module Name: tb_lsfr_4b
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

module tb_lsfr_4b;

// 신호 선언 (tb는 입력은 reg, 출력은 wire!)
reg clk, rst, ld, mode;
wire [3:0] par_out;

// DUT 인스턴스화 (Device Under Test)
lsfr_4b uut (
    .clk(clk),
    .rst(rst),
    .ld(ld),
    .mode(mode),
    .par_out(par_out)
);

// 클럭 생성: 20ns 주기 (10ns마다 반전)
always #10 clk = ~clk;

initial begin
    // 초기값
    clk = 0; rst = 0; ld = 0; mode = 0;
    #100;         // 100ns 대기 (리셋 신호 안정화)
    rst = 1;      // 100ns 후 리셋 해제

    // LFSR 초기값 로드
    #50; ld = 1;         // 50ns 대기 후 Load
    #20; ld = 0;         // 20ns 후 Load 해제

    // 왼쪽 시프트 모드(mode=1)
    #10; mode = 1;

    // 시프트 동작 반복 (왼쪽 시프트 4번)
    #50;
    #50;
    #50;
    #50;

    // 오른쪽 시프트 모드로 변경(mode=0)
    #10; mode = 0;

    // 시프트 동작 반복 (오른쪽 시프트 3번)
    #50;
    #50;
    #50;

    // 시뮬레이션 종료
    #50; $finish;
end

// 출력 신호 모니터링 (Waveform/콘솔에서 확인)
initial begin
    $monitor($time, " clk=%b rst=%b ld=%b mode=%b par_out=%b", clk, rst, ld, mode, par_out);
end

endmodule
