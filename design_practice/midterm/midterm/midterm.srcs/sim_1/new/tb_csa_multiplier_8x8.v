`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 09:30:15
// Design Name: 
// Module Name: tb_csa_multiplier_8x8
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



module tb_csa_multiplier_8x8;

    // --- 테스트 입력 ---
    reg [7:0] test_A;
    reg [7:0] test_B;

    // --- 테스트 출력 ---
    wire [15:0] test_Z; // 곱셈 결과

    // --- DUT 인스턴스화 ---
    // 설계한 csa_multiplier_8x8 모듈을 연결합니다.
    csa_multiplier_8x8 dut_csm (
        .A(test_A),
        .B(test_B),
        .Z(test_Z)
    );

    // --- 테스트 시나리오 ---
    initial begin
        $display("--- 8x8 CSM Test Started ---");
        $display("Time | A (Hex/Dec) | B (Hex/Dec) | Expected Z (Hex/Dec) | Actual Z (Hex)");
        $display("---------------------------------------------------------------------------");

        // 테스트 1: 0 곱하기
        test_A = 8'd0; test_B = 8'd0;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd0, 0, test_Z); // 예상 Z = 0

        test_A = 8'd123; test_B = 8'd0;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd0, 0, test_Z); // 예상 Z = 0

        // 테스트 2: 작은 수 곱하기
        test_A = 8'd1; test_B = 8'd1;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd1, 1, test_Z); // 예상 Z = 1

        test_A = 8'd2; test_B = 8'd3;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd6, 6, test_Z); // 예상 Z = 6

        test_A = 8'd10; test_B = 8'd10;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd100, 100, test_Z); // 예상 Z = 100

        // 테스트 3: 중간 크기 수 곱하기
        test_A = 8'd50; test_B = 8'd60;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd3000, 3000, test_Z); // 예상 Z = 3000

        test_A = 8'd123; test_B = 8'd45;
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd5535, 5535, test_Z); // 예상 Z = 5535

        // 테스트 4: 최대값 포함 곱하기
        test_A = 8'hFF; test_B = 8'h01; // 255 * 1
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd255, 255, test_Z); // 예상 Z = 255

        test_A = 8'hFF; test_B = 8'h02; // 255 * 2
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd510, 510, test_Z); // 예상 Z = 510

        test_A = 8'hFF; test_B = 8'hFF; // 255 * 255
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd65025, 65025, test_Z); // 예상 Z = 65025

        // 테스트 5: 비트 패턴 확인 (예: 8'b10101010 * 8'b01010101)
        test_A = 8'b10101010; // 170
        test_B = 8'b01010101; // 85
        #10;
        $display("%4dns | %02h / %3d  | %02h / %3d  | %04h / %6d       | %04h", $time,
                 test_A, test_A, test_B, test_B, 16'd14450, 14450, test_Z); // 예상 Z = 14450 (3872h)

        $display("---------------------------------------------------------------------------");
        $display("--- 8x8 CSM Test Finished ---");
        $finish;
    end

endmodule