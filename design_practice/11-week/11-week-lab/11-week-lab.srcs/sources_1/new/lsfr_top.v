`timescale 1ns / 1ps
// lfsr_top 모듈: LFSR과 여러 개의 7-segment display를 제어하는 최상위 모듈
module lfsr_top(
    input clk, // 시스템 클럭 입력
    input rst, // 리셋 입력 (active high)
    output [1:0] seg_en, // 2비트 segment 활성화 신호 (아마도 PmodSSD 2개 제어용)
    output [6:0] seg_ab, // 첫 번째 PmodSSD의 segment 출력 (또는 두 자리 숫자 중 하나)
    output [6:0] seg_cd, // 두 번째 PmodSSD의 segment 출력 (또는 두 자리 숫자 중 하나)
    output out_s // LFSR 직렬 출력
);

    wire clk_125M_sig = clk; // 입력 clk를 125MHz로 가정 (강의자료 표현)
    wire clk_100M, clk_1M, clk_10K, clk_100, clk_1; // 다양한 주파수의 클럭 와이어

    // 클럭 생성 모듈
    clk_gen_100M u0 (
        //.clk_125M(clk_125M_sig), // clk_gen_100M의 입력 포트명 (주석 처리된 원본)
        .clk_ref(clk_125M_sig), // 수정된 포트명 (실제 clk_gen_100M 모듈의 입력 포트 이름으로 변경 필요)
        .rst(rst),           // 실제 clk_gen_100M 모듈의 리셋 포트 이름으로 변경 필요
        .clk_100M(clk_100M)    // 실제 clk_gen_100M 모듈의 100MHz 출력 포트 이름으로 변경 필요
    );

    // 주파수 분주 모듈들
    freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
    freq_div_100 u2 (.clk_ref(clk_1M),   .rst(rst), .clk_div(clk_10K));
    // freq_div_100 u3 (.clk_ref(clk_10K),  .rst(rst), .clk_div(clk_100));
    // freq_div_100 u4 (.clk_ref(clk_100),  .rst(rst), .clk_div(clk_1)); // clk_1 생성

    wire [15:0] lfsr_data; // LFSR 병렬 데이터
    wire        seq_data_s;  // LFSR 직렬 데이터 (강의자료 변수명: seq_data)

    // LFSR 모듈 인스턴스 (clk_1 사용)
    lfsr u5 (
        .clk(clk_10k), // LFSR 클럭 입력
        .rstn(~rst), // LFSR은 active low 리셋이므로 반전하여 연결
        .out_p(lfsr_data),
        .out_s(seq_data_s)
    );

    wire [3:0] hexa, hexb, hexc, hexd; // 4개의 4비트 hex 값
    wire [6:0] sega, segb, segc, segd; // 4개의 7-segment 값

    // LFSR 16비트 출력을 4개의 4비트 hex 값으로 분할
    assign {hexd, hexc, hexb, hexa} = lfsr_data;

    // hex to ssd 변환 모듈 인스턴스들
    hex2ssd u6 (.hex(hexa), .seg(sega));
    hex2ssd u7 (.hex(hexb), .seg(segb)); // 강의자료 u? -> u7로 변경
    hex2ssd u8 (.hex(hexc), .seg(segc));
    hex2ssd u9 (.hex(hexd), .seg(segd));

    // Segment 활성화 및 데이터 선택 로직 (동적 구동을 위함)
    // clk_1M 주기에 따라 두 자리씩 번갈아 표시
    assign seg_en = clk_1M ? 2'b11 : 2'b00; // 두 PmodSSD 모두 활성화/비활성화 (강의자료 표현)
                                            // 실제로는 각 PmodSSD의 enable 핀을 다르게 제어해야 할 수 있음
    assign seg_ab = clk_1M ? segb : sega; // clk_1M이 1이면 segb, 0이면 sega 선택
    assign seg_cd = clk_1M ? segd : segc; // clk_1M이 1이면 segd, 0이면 segc 선택

    assign out_s = seq_data_s; // 최종 직렬 출력

endmodule
