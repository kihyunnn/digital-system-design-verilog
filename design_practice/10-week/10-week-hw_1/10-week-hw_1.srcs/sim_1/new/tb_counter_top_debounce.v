`timescale 1ns / 1ps

module tb_counter_top_debounce;

    // DUT 입력 신호
    reg clk_ref_tb;
    reg rst_tb;
    reg en_tb;
    reg up_tb;
    reg down_tb;

    // DUT 출력 신호
    wire [3:0] cnt_tb;

    // DUT 인스턴스화
    counter_top_debounce uut (
        .clk_ref(clk_ref_tb),
        .rst(rst_tb),
        .en(en_tb),
        .up(up_tb),
        .down(down_tb),
        .cnt(cnt_tb)
    );

    // 클럭 생성 
    initial clk_ref_tb = 1'b0;
    always #4 clk_ref_tb = ~clk_ref_tb;

    initial begin
        rst_tb = 1'b1;
        en_tb = 1'b0;
        up_tb = 1'b0;
        down_tb = 1'b0;
        #200_000; 

        rst_tb = 1'b0;
        #100_000; // 100us IP 안정화 대기 

        en_tb = 1'b1;
        #200;       // en 신호 안정화 (200ns)


        // 버튼 누름 110ms
        up_tb = 1'b1;
        #110_000_000; // 110ms 동안 up 유지
        up_tb = 1'b0;
        #20_000_000;

        $finish;

    end

    initial begin
        $monitor("Time=%0t ns, clk_ref=%b, rst=%b, en=%b, up=%b, down=%b | CNT_OUT=%d (0x%h)",
                 $time, clk_ref_tb, rst_tb, en_tb, up_tb, down_tb, cnt_tb, cnt_tb);
    end

endmodule