
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/16 01:04:41
// Design Name: 
// Module Name: tb_ud_counter_kn
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_ud_counter_kn;
// K, N 파라미터 정의
localparam K = 3;
localparam N = 8;

// 입력/출력 신호 선언 
reg clk;
reg rstn;
reg en;
reg ud;
wire [K-1:0] cnt;

// 카운터 모듈 인스턴스에 K, N 값을 넘김
ud_counter_kn #(
    .K(K),
    .N(N)
) uut (
    .clk(clk),
    .rstn(rstn),
    .en(en),
    .ud(ud),
    .cnt(cnt)
);

// 클럭 생성 (10ns 주기)
initial clk = 0;
always #5 clk = ~clk;

// 테스트 시나리오
initial begin
    rstn = 0; en = 0; ud = 1;
    #10;        // 10ns 동안 리셋
    rstn = 1;   // 리셋 해제
    en = 1;     // 카운트 동작 시작
    ud = 1;     // 업카운트
    #80;        // 80ns 간 업카운트 (8클럭)
    
    ud = 0;     // 다운카운트
    #80;        // 8클럭 다운카운트
    
    ud = 1;     // 다시 업카운트
    #40;        // 4클럭
    
    en = 0;     // 카운트 정지
    #40;
    
    en = 1;     // 카운트 재개
    #80;
    
    $finish;    // 시뮬레이션 종료
end

// 신호 변화 모니터링
initial begin
    $monitor("time=%t rstn=%b en=%b ud=%b cnt=%b", $time, rstn, en, ud, cnt);
end

endmodule