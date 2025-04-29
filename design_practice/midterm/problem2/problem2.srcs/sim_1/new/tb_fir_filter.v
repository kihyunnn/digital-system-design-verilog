
`timescale 1ns/1ps
module tb_fir_filter;
  reg               clk;
  reg               reset;
  reg  signed [3:0] data_in;
  wire signed [9:0] data_out;
  integer           i;

  // DUT 인스턴스
  fir_filter uut (
    .clk     (clk),
    .reset   (reset),
    .data_in (data_in),
    .data_out(data_out)
  );

  // 클럭 생성: 주기 10ns
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // 리셋 시퀀스 (active-high)
  initial begin
    reset = 1;    // 리셋을 active-high 로 설정
    #20   reset = 0;  // deassert
  end

  // 입력 벡터 
  initial begin
    data_in = 4'sd0;
    wait(reset == 0);

    // 1) -7 → +7
    for (i = -7; i <= 7; i = i + 1)
      repeat (4) @(posedge clk) data_in = i;

    // 2) +7 → -7
    for (i = 7; i >= -7; i = i - 1)
      repeat (4) @(posedge clk) data_in = i;

    // 3) -7 → +7, 그 값의 반전
    for (i = -7; i <= 7; i = i + 1) begin
      repeat (4) @(posedge clk) data_in = i;
      repeat (4) @(posedge clk) data_in = -i;
    end

    #40 $stop;
  end

  initial begin
    $display("   t     clk rst din dout");
    $monitor("%0t |   %b    %b   %0d   %0d",
             $time, clk, reset, data_in, data_out);
  end
endmodule
