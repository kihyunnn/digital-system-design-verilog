
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 09:09:23
// Design Name: 
// Module Name: tb_ha_1
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

`timescale 1ns/1ps

module tb_ha_1;

  // 입력
  reg a, b;

  // 출력
  wire sum, cout;

  // 테스트 대상 모듈 인스턴스화
  ha_1 UUT (
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
  );

  // 결과 모니터링
  initial begin
    $monitor("Time=%0t a=%b b=%b sum=%b cout=%b", $time, a, b, sum, cout);
  end

  // 테스트 시나리오
  initial begin
    // 테스트 케이스 1: 0 + 0
    a = 0; b = 0;
    #100;
    
    // 테스트 케이스 2: 0 + 1
    a = 0; b = 1;
    #100;
    
    // 테스트 케이스 3: 1 + 0
    a = 1; b = 0;
    #100;
    
    // 테스트 케이스 4: 1 + 1
    a = 1; b = 1;
    #100;

    // 시뮬레이션 종료
    $finish;
  end

endmodule
