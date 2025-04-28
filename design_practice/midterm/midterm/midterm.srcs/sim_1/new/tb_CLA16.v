`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:20:26
// Design Name: 
// Module Name: tb_CAL16
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

module tb_CLA16;

    // Testbench 내부 신호 선언 
    reg [15:0] A;
    reg [15:0] B;
    reg Cin;

    wire [15:0] Sum;
    wire Cout;
    wire GP; 
    wire GG;

    // 테스트할 모듈 인스턴스화
    CLA16 uut_cla16 (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout),
        .GP(GP),
        .GG(GG)
    );

    // 초기 블록 
    initial begin
        // 시뮬레이션 시작 메시지 출력
        $display("------------------------------------------------------");
        $display("CLA16 Testbench Starting");
        $display("시간   A         B         Cin   Sum       Cout GP GG");
        $display("------------------------------------------------------");

        // 초기값 설정 (모든 입력 0)
        A = 16'h0000;
        B = 16'h0000;
        Cin = 1'b0;
        #10; // 10 시간 단위 대기 (논리 안정화 시간 가정)
        $display("%4dns %h %h %b     %h    %b  %b  %b", $time, A, B, Cin, Sum, Cout, GP, GG); // 결과 출력

        // 케이스 1: 15 + 20 -> 35 예상
        A = 16'd15; // 십진수 15
        B = 16'd20; // 십진수 20
        Cin = 1'b0;
        #10;
        $display("%4dns %h %h %b     %h    %b  %b  %b", $time, A, B, Cin, Sum, Cout, GP, GG);

        // 케이스 2: 캐리 입력 포함 100 + 200 + 1 -> 301 예상
        A = 16'd100;
        B = 16'd200;
        Cin = 1'b1;
        #10;
        $display("%4dns %h %h %b     %h    %b  %b  %b", $time, A, B, Cin, Sum, Cout, GP, GG);

        // 케이스 3: 캐리 출력 발생 FFFF + 1 + 0 -> 0, 캐리 발생
        A = 16'hFFFF; // 십육진수 FFFF (65535)
        B = 16'h0001; // 십육진수 0001 (1)
        Cin = 1'b0;
        #10;
        $display("%4dns %h %h %b     %h    %b  %b  %b", $time, A, B, Cin, Sum, Cout, GP, GG);


        // 케이스 5: 최대값 덧셈 (FFFF + FFFF + 0)
        A = 16'hFFFF;
        B = 16'hFFFF;
        Cin = 1'b0;
        #10;
        $display("%4dns %h %h %b     %h    %b  %b  %b", $time, A, B, Cin, Sum, Cout, GP, GG);


        $finish; // 시뮬레이션 종료 
    end


endmodule
