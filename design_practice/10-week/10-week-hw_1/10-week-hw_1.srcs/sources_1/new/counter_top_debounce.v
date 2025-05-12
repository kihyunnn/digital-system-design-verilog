`timescale 1ns / 1ps
// 모듈 이름: counter_top_debounce
// 기능: Synchronizer와 Debouncer를 포함하여 스위치 입력을 안정적으로 처리하는
//       4비트 업/다운 카운터 시스템의 최상위 모듈.
module counter_top_debounce(
    input clk_ref,    // 입력: 시스템 기준 클럭
    input rst,        // 입력: 리셋 신호
    input en,         // 입력: 카운터 활성화 신호
    input up,         // 입력: 업 버튼으로부터의 비동기/불안정 신호
    input down,       // 입력: 다운 버튼으로부터의 비동기/불안정 신호
    output [3:0] cnt  // 출력: 4비트 카운터 값
);

// 내부 와이어 선언
wire clk_125M = clk_ref;                      // 입력 clk_ref에 대한 별칭
wire clk_100M, clk_1M, clk_10K, clk_100;  // 중간 단계의 클럭들

wire s_up, s_down;     // 동기화된 up/down 신호 (Synchronizer 출력)
wire d_up, d_down;     // 디바운싱된 up/down 신호 (Debouncer 출력)

// 100MHz 클럭 생성 모듈 인스턴스화
// (슬라이드 25의 u0 모듈 포트 이름 clk_in1, clk_out1을 clk_125M, clk_100M으로 변경하여 일관성 유지)
clk_gen_100M u0 (
    .clk_ref(clk_ref),// 강의노트에서는 .clk_in1(clk_125M)
    .rst(rst),
    .clk_100M(clk_100M)  // 강의노트에서는 .clk_out1(clk_100M)
);

// 주파수 분주기 인스턴스화 (100MHz -> 1MHz -> 10kHz -> 100Hz)
freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
freq_div_100 u2 (.clk_ref(clk_1M),   .rst(rst), .clk_div(clk_10K));
freq_div_100 u3 (.clk_ref(clk_10K),  .rst(rst), .clk_div(clk_100)); // 최종 100Hz 클럭 생성

// Synchronizer 인스턴스화: up/down 버튼 입력을 100Hz 클럭에 동기화
synchronizer s0 (
    .clk(clk_100),     // 동기화 기준 클럭 (100Hz)
    .async_in(up),     // 비동기 up 버튼 입력
    .sync_out(s_up)    // 동기화된 up 신호 출력
);
synchronizer s1 (
    .clk(clk_100),     // 동기화 기준 클럭 (100Hz)
    .async_in(down),   // 비동기 down 버튼 입력
    .sync_out(s_down)  // 동기화된 down 신호 출력
);

// Debouncer 인스턴스화: 동기화된 up/down 신호의 채터링 제거
// Debouncer의 N, K 파라미터는 스위치 특성과 100Hz 클럭에 맞게 설정해야 함.
// 예: 20ms 디바운스 시간, 100Hz 클럭(주기 10ms) -> N = 20ms / 10ms = 2 (최소값, 실제로는 더 크게)
// 강의에서는 기본 파라미터 값을 사용한 것으로 가정합니다.
// 만약 N=20 (20 * 10ms = 200ms 디바운스 시간)을 원한다면, #(.N(20), .K(5)) 등으로 파라미터 전달.
debouncer d0 (
    .clk(clk_100),       // 디바운서 동작 클럭 (100Hz)
    .noisy(s_up),        // 채터링이 있을 수 있는 동기화된 up 신호
    .debounced(d_up)     // 디바운싱 처리된 up 신호
);
debouncer d1 (
    .clk(clk_100),       // 디바운서 동작 클럭 (100Hz)
    .noisy(s_down),      // 채터링이 있을 수 있는 동기화된 down 신호
    .debounced(d_down)   // 디바운싱 처리된 down 신호
);

// 4비트 업/다운 카운터(ud_counter_4) 인스턴스화
// 안정화된 d_up, d_down 신호를 카운터의 제어 입력으로 사용
ud_counter_4 c0 (
    .clk(clk_100),   // 카운터 동작 클럭 (100Hz)
    .rst(rst),       // 리셋 신호
    .en(en),         // 활성화 신호
    .up(d_up),       // 디바운싱된 up 신호
    .down(d_down),   // 디바운싱된 down 신호
    .cnt(cnt)        // 카운터 출력
);

endmodule
