`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: hex2ssd_top
// Description: 7-Segment Display를 제어하는 최상위 모듈
//////////////////////////////////////////////////////////////////////////////////

module hex2ssd_top(
  input clk,         // FPGA 보드로부터 입력되는 주 시스템 클럭 (예: 125MHz)
  input rst,         // 시스템 리셋 입력
  input [3:0] hex,   // 7-Segment에 표시할 4비트 HEX 값
  output seg_en,     // Segment Enable (또는 Digit Select) 출력
  output [6:0] ssd   // 7-Segment (a-g) 데이터 출력
);

  // wire clk_125M_clk; // 이전에 드라이버가 없던 와이어입니다. 이제 사용하지 않습니다.

  wire clk_100M_internal; // clk_gen_100M 모듈에서 생성된 100MHz 클럭을 위한 내부 wire
  wire clk_1M_internal;   // freq_div_100 모듈에서 생성된 1MHz 클럭을 위한 내부 wire

  // clk_gen_100M 모듈 인스턴스화
  // clk_gen_100M 모듈의 'clk_ref' 입력 포트에 최상위 'clk'를 직접 연결합니다.
  clk_gen_100M u0 (
    .clk_ref(clk),     // <<< 가장 중요한 수정 사항: 최상위 입력 clk를 clk_gen_100M의 clk_ref 입력으로 전달
    .rst(rst),
    .clk_100M(clk_100M_internal) // 생성된 100MHz 클럭을 내부 wire에 연결
  );

  // 주파수 분주기 모듈 인스턴스화 (100MHz -> 1MHz)
  freq_div_100 u1 (
    .clk_ref(clk_100M_internal),
    .rst(rst),
    .clk_div(clk_1M_internal)
  );

  // HEX 값을 7-Segment 신호로 변환하는 모듈 인스턴스화
  hex2ssd u_hex2ssd (
    .hex(hex),
    .seg(ssd) // 7-Segment 데이터 출력 포트 ssd에 연결
  );

  // Segment Enable 신호 할당
  assign seg_en = (clk_1M_internal) ? 1'b1 : 1'b0;

endmodule