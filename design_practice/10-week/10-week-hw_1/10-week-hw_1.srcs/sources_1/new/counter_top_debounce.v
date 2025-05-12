`timescale 1ns / 1ps
module counter_top_debounce(
    input clk_ref,    
    input rst,        // 리셋 신호
    input en,         // 활성화 신호
    input up,         // 업 버튼으로부터의 비동기/불안정 신호
    input down,       // 다운 버튼으로부터의 비동기/불안정 신호
    output [3:0] cnt  // 4비트 카운터 값
);

// 내부 와이어 선언
wire clk_125M = clk_ref;                   
wire clk_100M, clk_1M, clk_10K, clk_100;  //중간 단계의 클럭들

wire s_up, s_down;     // 동기화된 up/down 신호
wire d_up, d_down;     // 디바운싱된 up/down 신호

// 100MHz 클럭 생성 모듈 인스턴스화
clk_gen_100M u0 (
    .clk_ref(clk_ref),
    .rst(rst),
    .clk_100M(clk_100M)  
);

// 주파수 분주기 인스턴스화 (100MHz -> 1MHz -> 10kHz -> 100Hz)
freq_div_100 u1 (.clk_ref(clk_100M), .rst(rst), .clk_div(clk_1M));
freq_div_100 u2 (.clk_ref(clk_1M),   .rst(rst), .clk_div(clk_10K));
freq_div_100 u3 (.clk_ref(clk_10K),  .rst(rst), .clk_div(clk_100)); // 최종 100Hz 클럭 생성

// Synchronizer 인스턴스화
synchronizer s0 (
    .clk(clk_100),     
    .async_in(up),     
    .sync_out(s_up)    
);
synchronizer s1 (
    .clk(clk_100),    
    .async_in(down),   
    .sync_out(s_down)  
);

// Debouncer 인스턴스화
debouncer d0 (
    .clk(clk_100),       
    .noisy(s_up),        
    .debounced(d_up)     
);
debouncer d1 (
    .clk(clk_100),       
    .noisy(s_down),      
    .debounced(d_down)   
);

// 4비트 업/다운 카운터(ud_counter_4) 인스턴스화
ud_counter_4 c0 (
    .clk(clk_100),   
    .rst(rst),       
    .en(en),         
    .up(d_up),      
    .down(d_down),   
    .cnt(cnt)       
);

endmodule
