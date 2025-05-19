// bcd_cnt.v
module bcd_cnt(
  input        clk,   // 시스템 클럭
  input        en,    // 카운트 활성화
  input        rst,   // 동기 리셋 (active high)
  output reg [3:0] q, // 0~9 카운트 값
  output       carry // 자리올림 신호
);
  always @(posedge clk or posedge rst) begin
    if (rst)         q <= 4'd0;              // 리셋 시 0
    else if (en)     q <= (q == 4'd9) ? 4'd0 : q + 4'd1;
    // en=0일 땐 q 유지
  end

wire at9 = (q == 4'd9);
assign carry = en & at9;
endmodule
