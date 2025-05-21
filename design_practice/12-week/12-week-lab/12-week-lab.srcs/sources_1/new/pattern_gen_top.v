`timescale 1ns / 1ps


module pattern_gen_top(
    input           clk_ref,    
    input   [1:0]   select,
    input           reset,      
    output  [3:0]   R,
    output  [3:0]   G,
    output  [3:0]   B,
    output          HS,
    output          VS
    );

// clk_gen 모듈에서 생성된 25MHz 클럭을 저장할 와이어
wire generated_clk_25M;

// 25MHz 클럭 생성 모듈 인스턴스화
clk_gen u0 ( 
    .clk_ref(clk_ref),              
    .rst(reset),                    
    .clk_25M(clk_25M)     
);


pattern_gen u1 (
    .clk(clk_25M),
    .reset_n(~reset),
    .pattern_select(select),

    .o_vs(VS),
    .o_hs(HS),
    .o_r_data(R),
    .o_g_data(G),
    .o_b_data(B)

);

endmodule
