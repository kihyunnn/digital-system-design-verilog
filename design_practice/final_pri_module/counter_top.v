//100Hz 클럭으로 동작하는 4비트 업/다운 카운터
`timescale 1ns / 1ps  

module counter_top(
    input        clk_ref,  // 시스템 기준 클럭 
    input        rst,      // 비동기 리셋 신호 
    input        en,       // 카운터 동작 활성화 신호
    input        up,       // 업 카운트 제어 신호
    input        down,     // 다운 카운트 제어 신호
    output [3:0] cnt       // 4비트 카운터 출력
);

    // 내부 와이어 선언
    wire clk_125M = clk_ref;              // clk_ref를 내부 125MHz 클럭 이름으로 사용
    wire clk_100M, clk_1M, clk_10K, clk_100;  // 중간 단계 클럭(100MHz, 1MHz, 10kHz, 100Hz)

    // 125MHz → 100MHz 생성 (Clocking Wizard IP)
    clk_gen_100M u0 (
        .clk_ref(clk_125M),  // 입력 기준 클럭
        .rst(rst),           // 리셋
        .clk_100M(clk_100M)  // 생성된 100MHz
    );

    // 100MHz → 1MHz 분주
    freq_div_100 u1 (
        .clk_ref(clk_100M),  // 입력: 100MHz
        .rst(rst),           // 리셋
        .clk_div(clk_1M)     // 출력: 1MHz
    );

    // 1MHz → 10kHz 분주
    freq_div_100 u2 (
        .clk_ref(clk_1M),    // 입력: 1MHz
        .rst(rst),
        .clk_div(clk_10K)    // 출력: 10kHz
    );

    // 10kHz → 100Hz 분주
    freq_div_100 u3 (
        .clk_ref(clk_10K),   // 입력: 10kHz
        .rst(rst),
        .clk_div(clk_100)    // 출력: 100Hz (최종 카운터 클럭)
    );

    // 100Hz 클럭 기반 4비트 업/다운 카운터
    ud_counter_4 u4 (
        .clk(clk_100),   // 카운터 클럭: 100Hz
        .rst(rst),       // 리셋
        .en(en),         // 활성화
        .up(up),         // 업 제어
        .down(down),     // 다운 제어
        .cnt(cnt)        // 카운터 값 출력
    );

endmodule