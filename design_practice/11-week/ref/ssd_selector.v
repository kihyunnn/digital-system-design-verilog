`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ssd_selector
// Description: 11주차 실습 모듈만으로 만든 4자리 시분할 드라이버
//////////////////////////////////////////////////////////////////////////////////
module ssd_selector(
    input  wire       clk125MHz,  // Zybo 보드 125 MHz 클럭
    input  wire       rst,        // Active-High 리셋
    input  wire [6:0] s3,         // 10s 자리 디코더 출력
    input  wire [6:0] s2,         // 1s  자리 디코더 출력
    input  wire [6:0] s1,         // 0.1s 자리 디코더 출력
    input  wire [6:0] s0,         // 0.01s 자리 디코더 출력
    output reg  [3:0] an,         // Common-Anode 선택 (0=ON)
    output reg  [6:0] seg         // 7-Segment 공통 버스 (0=ON)
);

  // 1) 125MHz → 100MHz
  wire clk100M;
  clk_gen_100M u_clk100M (
    .clk_ref(clk125MHz),
    .rst    (rst),
    .clk_100M(clk100M)
  );

  // 2) 100MHz → 1MHz
  wire clk1M;
  freq_div_100 u_div100 (
    .clk_ref(clk100M),
    .rst    (rst),
    .clk_div(clk1M)
  );

  // 3) 1MHz로 2-bit 스캔 카운터
  reg [1:0] sel;
  always @(posedge clk1M or posedge rst) begin
    if (rst)       sel <= 2'b00;
    else           sel <= sel + 2'b01;
  end

  // 4) sel에 따라 an, seg 선택
  always @(*) begin
    case (sel)
      2'b00: begin an = 4'b1110; seg = s0; end  // 0.01s
      2'b01: begin an = 4'b1101; seg = s1; end  // 0.1s
      2'b10: begin an = 4'b1011; seg = s2; end  // 1s
      2'b11: begin an = 4'b0111; seg = s3; end  // 10s
      default: begin an = 4'b1111; seg = 7'b1111111; end
    endcase
  end

endmodule
