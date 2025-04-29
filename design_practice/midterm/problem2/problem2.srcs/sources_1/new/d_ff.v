
module d_ff #(
  parameter N = 4            // 데이터 비트 폭 설정
)(
  input  wire               clk,           // 클럭 입력
  input  wire               reset,         // 리셋 입력 (active-high)
  input  wire signed [N-1:0] data_in,      // 입력 데이터
  output reg  signed [N-1:0] data_delayed  // 출력 데이터 (지연된 데이터)
);

  // 
  // reset이 '1'이 되면 (active-high) 즉시 data_delayed를 0으로 초기화
  // reset이 '0'인 상태에서 clk의 rising edge마다 data_in 값을 data_delayed에 샘플링하여 저장
 
  always @(posedge clk or posedge reset) begin  
    if (reset)  
      data_delayed <= 0;       // 리셋 시 출력 레지스터 클리어
    else        
      data_delayed <= data_in; // 클럭 상승 에지에서 입력 데이터 샘플링
  end

endmodule
