`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 08:57:46
// Design Name: 
// Module Name: tb_bcd_converter_16_to_20
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



// bcd_converter_16_to_20_tb.v
// 16비트 이진수 -> 20비트 BCD 변환 모듈 테스트벤치 (수정 버전)

`timescale 1ns / 1ps // 시뮬레이션 시간 단위 설정

module bcd_converter_16_to_20_tb;

    // --- 테스트 입/출력 신호 ---
    // 변환할 이진수 입력
    reg [15:0] bin_in;

    // 변환된 BCD 출력
    wire [19:0] bcd_out;

    // --- 테스트 대상 모듈 인스턴스화 ---
    // 설계한 bcd_converter_16_to_20 모듈을 연결합니다.
    bcd_converter_16_to_20 my_bcd_conv ( // 인스턴스 이름 변경
        .binary_in (bin_in), // 테스트 입력 신호를 모듈 입력에 연결
        .bcd_out   (bcd_out) // 모듈 출력 신호를 테스트 출력 와이어에 연결
    );

    // --- 테스트 시나리오 ---
    // initial 블록에서 다양한 입력 값을 순차적으로 인가합니다.
    initial begin
        // 시뮬레이션 시작 정보 출력
        $display("--- BCD Converter Test Started ---");
        $display("Time | Binary (Hex / Dec) | BCD Output (Hex)");
        $display("-------------------------------------------");

        // 테스트 1: 최소값 (0)
        bin_in = 16'h0; // 이진수 0 (16진수 0)
        #10; // 조합 논리 안정화 대기
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 2: 작은 값 (1)
        bin_in = 16'd1; // 이진수 1 (10진수 1)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 3: 십의 자리 올림 확인 (9, 10)
        bin_in = 16'd9; // 이진수 9 (10진수 9)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        bin_in = 16'd10; // 이진수 10 (10진수 10)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 4: 백의 자리 올림 확인 (99, 100)
        bin_in = 16'd99; // 이진수 99 (10진수 99)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        bin_in = 16'd100; // 이진수 100 (10진수 100)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 5: 천의 자리 올림 확인 (999, 1000)
        bin_in = 16'd999; // 이진수 999 (10진수 999)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        bin_in = 16'd1000; // 이진수 1000 (10진수 1000)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 6: 만의 자리 올림 확인 (9999, 10000)
        bin_in = 16'd9999; // 이진수 9999 (10진수 9999)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        bin_in = 16'd10000; // 이진수 10000 (10진수 10000)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 7: 최대값 (65535)
        bin_in = 16'hFFFF; // 이진수 65535 (16진수 FFFF)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        // 테스트 8: 임의의 값 (예: 4096, 32768)
        bin_in = 16'd4096; // 이진수 4096 (10진수 4096)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);

        bin_in = 16'd32768; // 이진수 32768 (10진수 32768)
        #10;
        $display("%4dns | %h / %6d     | %h", $time, bin_in, bin_in, bcd_out);


        // 시뮬레이션 종료 알림
        $display("-------------------------------------------");
        $display("--- BCD Converter Test Finished ---");
        $finish; // 시뮬레이션 강제 종료

    end // initial block 끝

endmodule