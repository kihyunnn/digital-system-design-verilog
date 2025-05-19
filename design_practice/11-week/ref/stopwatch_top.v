`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: stopwatch_top
// Description: 4자리(00.00) 스톱워치 최상위 모듈
//////////////////////////////////////////////////////////////////////////////////
module stopwatch_top(
    input  wire       clk125MHz,   // 125 MHz 시스템 클럭
    input  wire       btn_start,   // Start 버튼 (비동기)
    input  wire       btn_stop,    // Stop 버튼 (비동기)
    input  wire       btn_reset,   // Reset 버튼 (비동기)
    output wire [3:0] an,          // Common-Anode 선택 (0 = ON)
    output wire [6:0] seg          // 7-Segment 공통 버스 (0 = ON)
);

  // 1) 125MHz → 100MHz
  wire clk100M;
  clk_gen_100M u_clk100M (
    .clk_ref(clk125MHz),
    .rst    (btn_reset),
    .clk_100M(clk100M)
  );

  // 2) 100MHz → 0.01s 펄스 (100Hz)
  wire tick0p01;
  freq_div_1000 u_div1000 (
    .clk(clk100M),
    .rst(btn_reset),
    .tick(tick0p01)
  );

  // 3) 비동기 버튼 → synchronizer → debouncer
  wire start_sync, stop_sync, reset_sync;
  wire start_p,    stop_p,    reset_p;
  synchronizer u_sync0(.clk(clk100M), .async_in(btn_start), .sync_out(start_sync));
  synchronizer u_sync1(.clk(clk100M), .async_in(btn_stop),  .sync_out(stop_sync));
  synchronizer u_sync2(.clk(clk100M), .async_in(btn_reset), .sync_out(reset_sync));

  debouncer   u_db0  (.clk(clk100M), .noisy(start_sync), .debounced(start_p));
  debouncer   u_db1  (.clk(clk100M), .noisy(stop_sync),  .debounced(stop_p));
  debouncer   u_db2  (.clk(clk100M), .noisy(reset_sync), .debounced(reset_p));

  // 4) Run Control: Start 토글, Stop/Reset 클리어
  wire run_en;
  control_ff u_ctrl (
    .Clock (clk100M),
    .ff_in (run_en),    // 피드백 (현재 상태)
    .Set   (start_p),   // Start → 1
    .Clear (stop_p),    // Stop  → 0
    .Reset (reset_p),   // Reset → 0
    .Q     (run_en)     // 출력 run_en
  );

  // 5) BCD 카운터 체인: 0.01s(d0)~10s(d3), 99.99 포화 유지
  wire [3:0] d0,d1,d2,d3;
  bcd_cnt_chain u_chain (
    .clk  (clk100M),
    .tick (tick0p01),
    .en   (run_en),
    .rst  (reset_p),
    .d0   (d0), .d1(d1), .d2(d2), .d3(d3)
  );

  // 6) 7-Segment 디코더 ×4
  wire [6:0] s0, s1, s2, s3;
  seven_seg_decoder u_dec0(.x(d0), .hex_LEDs(s0));  // 0.01s 자리
  seven_seg_decoder u_dec1(.x(d1), .hex_LEDs(s1));  // 0.1s  자리
  seven_seg_decoder u_dec2(.x(d2), .hex_LEDs(s2));  // 1s    자리
  seven_seg_decoder u_dec3(.x(d3), .hex_LEDs(s3));  // 10s   자리

  // 7) 4자리 시분할 드라이버
  ssd_selector u_disp(
    .clk125MHz(clk125MHz),
    .rst       (reset_p),
    .s3        (s3), .s2(s2),
    .s1        (s1), .s0(s0),
    .an        (an),
    .seg       (seg)
  );

endmodule
