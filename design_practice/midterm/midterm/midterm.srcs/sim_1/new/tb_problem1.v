
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 09:21:06
// Design Name: 
// Module Name: tb_problem1
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

module tb_problem1;

    // --- 테스트 입력 ---
    reg [7:0] tb_X1, tb_Y1, tb_X2, tb_Y2;

    // --- 테스트 출력 ---
    wire [15:0] tb_A, tb_B, tb_C;
    wire [19:0] tb_D; // BCD 출력

    // --- DUT 인스턴스화 ---
    problem1 dut (
        .X_1(tb_X1), .Y_1(tb_Y1),
        .X_2(tb_X2), .Y_2(tb_Y2),
        .A(tb_A), .B(tb_B), .C(tb_C),
        .D(tb_D)
    );

    // --- 테스트 시나리오 ---
    initial begin
        $display("--- problem1_logic Test Started ---");
        $display("Time | X1 Y1 X2 Y2 | A(Hex) B(Hex) C(Hex) | D(BCD Hex)");
        $display("----------------------------------------------------------");

        // 테스트 1: 모든 입력 0
        tb_X1 = 8'd0; tb_Y1 = 8'd0; tb_X2 = 8'd0; tb_Y2 = 8'd0;
        #10;
        $display("%4dns | %2d %2d %2d %2d | %h   %h   %h   | %h", $time,
                 tb_X1, tb_Y1, tb_X2, tb_Y2, tb_A, tb_B, tb_C, tb_D);
        // 예상: A=0, B=0, C=0, D=00000

        // 테스트 2: 간단한 곱셈과 덧셈 (2*3 + 4*5 = 6 + 20 = 26)
        tb_X1 = 8'd2; tb_Y1 = 8'd3; tb_X2 = 8'd4; tb_Y2 = 8'd5;
        #10;
        $display("%4dns | %2d %2d %2d %2d | %h   %h   %h   | %h", $time,
                 tb_X1, tb_Y1, tb_X2, tb_Y2, tb_A, tb_B, tb_C, tb_D);
        // 예상: A=6(0006), B=20(0014), C=26(001A), D=00026

        // 테스트 3: 약간 큰 수 (10*10 + 20*20 = 100 + 400 = 500)
        tb_X1 = 8'd10; tb_Y1 = 8'd10; tb_X2 = 8'd20; tb_Y2 = 8'd20;
        #10;
        $display("%4dns | %2d %2d %2d %2d | %h   %h   %h   | %h", $time,
                 tb_X1, tb_Y1, tb_X2, tb_Y2, tb_A, tb_B, tb_C, tb_D);
        // 예상: A=100(0064), B=400(0190), C=500(01F4), D=00500

        // 테스트 4: 최대값 근처 (255*1 + 1*255 = 255 + 255 = 510)
        tb_X1 = 8'hFF; tb_Y1 = 8'h01; tb_X2 = 8'h01; tb_Y2 = 8'hFF;
        #10;
        $display("%4dns | %2h %2h %2h %2h | %h   %h   %h   | %h", $time,
                 tb_X1, tb_Y1, tb_X2, tb_Y2, tb_A, tb_B, tb_C, tb_D);
        // 예상: A=255(00FF), B=255(00FF), C=510(01FE), D=00510

        // 테스트 5: 최종 결과가 BCD 5자리 경계 근처 (예: 100*100 + 1*1 = 10000 + 1 = 10001)
        tb_X1 = 8'd100; tb_Y1 = 8'd100; tb_X2 = 8'd1; tb_Y2 = 8'd1;
        #10;
        $display("%4dns | %3d %3d %3d %3d | %h   %h   %h   | %h", $time,
                 tb_X1, tb_Y1, tb_X2, tb_Y2, tb_A, tb_B, tb_C, tb_D);
        // 예상: A=10000(2710), B=1(0001), C=10001(2711), D=10001


        $display("----------------------------------------------------------");
        $display("--- problem1_logic Test Finished ---");
        $finish;
    end

endmodule