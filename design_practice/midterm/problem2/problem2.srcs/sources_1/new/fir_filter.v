
module fir_filter #(
  parameter N = 4
)(
  input  wire               clk,
  input  wire               reset,
  input  wire signed [N-1:0] data_in,
  output reg  signed [9:0]  data_out
);

  // 계수 정의 (signed 4bit) 
  wire signed [3:0] coeff0 = 4'b0001;
  wire signed [3:0] coeff1 = 4'b0011;
  wire signed [3:0] coeff2 = 4'b0110;

  // 5단 지연을 위한 d_ff 인스턴스 
  wire signed [N-1:0] tap0, tap1, tap2, tap3, tap4;
  d_ff #(.N(N)) dff0 (.clk(clk), .reset(reset), .data_in(data_in), .data_delayed(tap0)); 
  d_ff #(.N(N)) dff1 (.clk(clk), .reset(reset), .data_in(tap0),    .data_delayed(tap1)); 
  d_ff #(.N(N)) dff2 (.clk(clk), .reset(reset), .data_in(tap1),    .data_delayed(tap2)); 
  d_ff #(.N(N)) dff3 (.clk(clk), .reset(reset), .data_in(tap2),    .data_delayed(tap3)); 
  d_ff #(.N(N)) dff4 (.clk(clk), .reset(reset), .data_in(tap3),    .data_delayed(tap4)); 

  //  대칭 덧셈 (5bit signed) 
  wire signed [4:0] sum0 = tap0 + tap4;
  wire signed [4:0] sum1 = tap1 + tap3;

  //  곱셈 결과 (signed) 
  wire signed [8:0] mul0 = sum0 * coeff0;
  wire signed [8:0] mul1 = sum1 * coeff1;
  wire signed [7:0] mul2_tmp = tap2 * coeff2;
  wire signed [9:0] mul2     = {{2{mul2_tmp[7]}}, mul2_tmp};

  //  누적 덧셈 (최종 10bit signed)
  wire signed [9:0] mul0_ext = {{1{mul0[8]}}, mul0};
  wire signed [9:0] mul1_ext = {{1{mul1[8]}}, mul1};
  wire signed [9:0] total    = mul0_ext + mul1_ext + mul2;

  // 출력 레지스터
  always @(posedge clk or posedge reset) begin
    if (reset)
      data_out <= 0;
    else
      data_out <= total;
  end

endmodule
