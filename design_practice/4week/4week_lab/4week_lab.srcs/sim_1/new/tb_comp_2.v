`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 01:14:33
// Design Name: 
// Module Name: tb_comp_2
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




module tb_comp_2();

    // 모듈 입력 신호 (2비트)
    reg [1:0] a;
    reg [1:0] b;

    // 모듈 출력 신호
    wire a_big;
    wire b_big;
    wire equal;



    // 테스트할 모듈 인스턴스화
    comp_2 UUT (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin
        // 초기 신호 값 설정
        a = 2'b00; // 2비트 00
        b = 2'b00;

        #100; // 100ns 대기

        // 테스트 케이스 (이미지 파형과 유사하게 입력 변화)
        a = 2'b10; b = 2'b10; #100; // a=2, b=2 (equal)
        a = 2'b00; b = 2'b00; #100; // a=0, b=0 (equal)
        a = 2'b11; b = 2'b01; #100; // a=3, b=1 (a_big)
        a = 2'b01; b = 2'b11; #100; // a=1, b=3 (b_big)
        a = 2'b11; b = 2'b10; #100; // a=3, b=2 (a_big)



        // 시뮬레이션 종료
        $finish;
    end

endmodule