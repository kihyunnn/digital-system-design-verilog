// 기능: 입력 기준 클럭(clk_ref)으로부터 1Hz 클럭(clk_out)을 생성
// 내부적으로 100MHz 클럭 생성 모듈과 다수의 100분주 모듈을 연속적으로(cascade) 연결하여 사용
module clk_gen_1(
    input clk_ref,    // 입력: 시스템의 기준 클럭
    input rst,        // 입력: 리셋 신호
    output clk_out   // 출력: 1Hz 클럭
);

// 내부 와이어 선언
wire clk_125M = clk_ref;                     // 입력 clk_ref에 대한 별칭
wire clk_100M, clk_1M, clk_10K, clk_100, clk_1; // 중간 단계의 클럭들을 저장할 와이어들
                                             // clk_1M: 1MHz, clk_10K: 10kHz, clk_100: 100Hz, clk_1: 1Hz

// 100MHz 클럭 생성 모듈 인스턴스화 
clk_gen_100M u0 (
    .clk_125M(clk_125M), // 125MHz 입력
    .reset(rst),         // 리셋 신호
    .clk_100M(clk_100M)  // 100MHz 출력
);

// 100분주 모듈들을 연속적으로 연결
// 1단계: 100MHz -> 1MHz
freq_div_100 u1 (
    .clk_ref(clk_100M), // 입력: 100MHz
    .rst(rst),
    .clk_div(clk_1M)    // 출력: 1MHz
);

// 2단계: 1MHz -> 10kHz (10,000 Hz)
freq_div_100 u2 (
    .clk_ref(clk_1M),   // 입력: 1MHz
    .rst(rst),
    .clk_div(clk_10K)   // 출력: 10kHz
);

// 3단계: 10kHz -> 100Hz
freq_div_100 u3 (
    .clk_ref(clk_10K),  // 입력: 10kHz
    .rst(rst),
    .clk_div(clk_100)   // 출력: 100Hz
);

// 4단계: 100Hz -> 1Hz
freq_div_100 u4 (
    .clk_ref(clk_100),  // 입력: 100Hz
    .rst(rst),
    .clk_div(clk_1)     // 출력: 1Hz
);

// 최종 출력 할당
assign clk_out = clk_1; // 생성된 1Hz 클럭(clk_1)을 모듈의 출력(clk_out)으로 전달

endmodule