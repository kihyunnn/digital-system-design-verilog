// 기능: 입력 기준 클럭(clk_ref, 예: 125MHz)을 사용하여 100MHz 클럭(clk_100M)을 생성
module clk_gen_100M(
    input    clk_ref,    // 입력: 기준 클럭 (예: FPGA 보드로부터의 125MHz 클럭)
    input    rst,        // 입력: 리셋 신호 (Active High, Clocking Wizard IP의 리셋으로 사용)
    output   clk_100M    // 출력: 생성된 100MHz 클럭
);
    
    // 내부 와이어 선언
    wire     clk_125M = clk_ref; // 입력 clk_ref에 대한 별칭 또는 명시적 와이어.
                                 // clk_wiz_0에 입력될 클럭.

    clk_wiz_0   clk_gen ( clk_100M,rst,clk_125M);
    
endmodule