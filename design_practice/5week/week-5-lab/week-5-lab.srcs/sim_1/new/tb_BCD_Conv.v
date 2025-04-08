`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/09 00:15:03
// Design Name: 
// Module Name: tb_BCD_Conv
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

module tb_BCD_Conv();

    // 입력 신호 선언 (
    reg [7:0] tb_binary_input;  // 테스트할 8비트 이진수 입력 변수

    // 출력 신호 선언 
    wire [3:0] tb_hundreds;  // 출력: 백의 자리 BCD
    wire [3:0] tb_tens;      // 출력: 십의 자리 BCD
    wire [3:0] tb_units;     // 출력: 일의 자리 BCD

    // 테스트 대상 모듈 인스턴스화
    BCD_Conv uut (
        .binary_input(tb_binary_input), // 입력 연결
        .hundreds(tb_hundreds),         // 백의 자리 출력 연결
        .tens(tb_tens),                 // 십의 자리 출력 연결
        .units(tb_units)                // 일의 자리 출력 연결
    );

    // 초기 블록
    initial begin
        // 테스트 케이스 1: 이진수 3 (10진수 3)
        tb_binary_input = 8'b00000011; // 3
        #100; // 100ns 대기

        // 테스트 케이스 2: 이진수 56 (10진수 56)
        tb_binary_input = 8'b00111000; // 56
        #100; // 100ns 대기

        // 테스트 케이스 3: 이진수 125 (10진수 125)
        tb_binary_input = 8'b01111101; // 125
        #100; // 100ns 대기

        // 시뮬레이션 종료
        $finish;
    end

endmodule