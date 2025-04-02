`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 01:13:31
// Design Name: 
// Module Name: tb_comp_1
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



module tb_comp_1();

    // 모듈 입력 신호
    reg a;
    reg b;

    // 모듈 출력 신호
    wire a_big;
    wire b_big;
    wire equal;

    // 테스트할 모듈 인스턴스화
    comp_1 dut (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin
        // 초기 신호 값 설정
        a = 0;
        b = 0;

        #100; // 100ns 대기

        // 테스트 케이스 1: a = 0, b = 0
        a = 0; b = 0;
        #100;

        // 테스트 케이스 2: a = 0, b = 1
        a = 0; b = 1;
        #100;

        // 테스트 케이스 3: a = 1, b = 0
        a = 1; b = 0;
        #100;

        // 테스트 케이스 4: a = 1, b = 1
        a = 1; b = 1;
        #100;

        // 시뮬레이션 종료
        $finish;
    end

endmodule