`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 22:58:46
// Design Name: 
// Module Name: tb_rac_4
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

module tb_rca_16;
    // 입력
    reg [15:0] x;
    reg [15:0] y;
    reg cin;
    
    // 출력
    wire [15:0] sum;
    wire cout;
    
    // 테스트할 모듈 인스턴스화 (Unit Under Test)
    rca_16 uut (
        .x(x),
        .y(y),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
        // 입력 초기화
        x = 16'h0000; y = 16'h0000; cin = 0;
        
        // 글로벌 리셋이 끝날 때까지 100ns 대기
        #100;
        
        // 테스트 케이스 1: 간단한 덧셈
        x = 16'h0003; y = 16'h0005; cin = 0; #100;
        
        // 테스트 케이스 2: 캐리 발생 케이스
        x = 16'hFFFF; y = 16'h0001; cin = 0; #100;
        
        // 테스트 케이스 3: 최대값 테스트 (캐리 입력 포함)
        x = 16'hFFFF; y = 16'hFFFF; cin = 1; #100;
        
        // 테스트 종료
        $finish;
    end
    
    // 결과 모니터링
    initial begin
        $monitor("시간=%t: x=%h, y=%h, cin=%b, sum=%h, cout=%b", 
                 $time, x, y, cin, sum, cout);
    end
    
endmodule