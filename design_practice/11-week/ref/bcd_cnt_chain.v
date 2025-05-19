// bcd_cnt_chain.v
module bcd_cnt_chain(
  input        clk,   // 분주된 100Hz 클럭
  input        tick,  // 0.01s 펄스
  input        en,    // run_en (Start/Stop 토글)
  input        rst,   // Reset 버튼 펄스
  output [3:0] d0,    // 0.01s 자리
  output [3:0] d1,    // 0.1s  자리
  output [3:0] d2,    // 1s    자리
  output [3:0] d3     // 10s   자리
);
  wire c0, c1, c2;
  // 모든 자리가 9일 때 포화 플래그
  wire stop99 = (d0==4'd9 && d1==4'd9 && d2==4'd9 && d3==4'd9);

  // 1단: 0.01s 자리
  bcd_cnt u0 (
    .clk(clk),
    .en(tick & en & ~stop99),
    .rst(rst),
    .q(d0),
    .carry(c0)
  );
  // 2단: 0.1s 자리
  bcd_cnt u1 (
    .clk(clk),
    .en(c0 & en & ~stop99),
    .rst(rst),
    .q(d1),
    .carry(c1)
  );
  // 3단: 1s 자리
  bcd_cnt u2 (
    .clk(clk),
    .en(c1 & en & ~stop99),
    .rst(rst),
    .q(d2),
    .carry(c2)
  );
  // 4단: 10s 자리 (carry는 더 이상 사용하지 않음)
  bcd_cnt u3 (
    .clk(clk),
    .en(c2 & en & ~stop99),
    .rst(rst),
    .q(d3),
    .carry()    // 미연결
  );
endmodule
