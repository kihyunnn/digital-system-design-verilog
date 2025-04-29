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

// tb_CLA16.v
// 16비트 Carry Lookahead Adder (CLA16) 상세 테스트벤치 (기존 스타일 기반)

`timescale 1ns / 1ps

module tb_CLA16;

    // --- 테스트 입력 ---
    reg [15:0] A;
    reg [15:0] B;
    reg Cin;

    // --- 테스트 출력 ---
    wire [15:0] Sum;
    wire Cout;
    wire GP; // Group Propagate 출력 확인
    wire GG; // Group Generate 출력 확인

    // --- DUT 인스턴스화 ---
    CLA16 uut_cla16 ( // 인스턴스 이름은 uut (Unit Under Test)로 유지
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout),
        .GP(GP),
        .GG(GG)
    );

    // --- 테스트 시나리오 ---
    initial begin
        // 시뮬레이션 시작 메시지 출력
        $display("--------------------------------------------------------------------");
        $display("CLA16 Testbench Starting (Detailed Cases)");
        $display("Time |  A(Hex)  |  B(Hex)  | Cin | Expected | Sum(Hex) | Cout | Status");
        $display("--------------------------------------------------------------------");

        // --- 테스트 케이스들 ---

        // 1. 기본 테스트
        A = 16'h0000; B = 16'h0000; Cin = 1'b0; #10; // 0 + 0 + 0 = 0, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0000 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h0 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h0001; B = 16'h0000; Cin = 1'b0; #10; // 1 + 0 + 0 = 1, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0001 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h1 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h0000; B = 16'h0001; Cin = 1'b0; #10; // 0 + 1 + 0 = 1, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0001 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h1 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h0001; B = 16'h0001; Cin = 1'b0; #10; // 1 + 1 + 0 = 2, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0002 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h2 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h000A; B = 16'h0005; Cin = 1'b0; #10; // 10 + 5 + 0 = 15(F), Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   000F | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'hF && Cout===1'b0) ? "PASS" : "FAIL");

        // 2. 캐리 입력 테스트
        A = 16'h0000; B = 16'h0000; Cin = 1'b1; #10; // 0 + 0 + 1 = 1, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0001 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h1 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h0001; B = 16'h0000; Cin = 1'b1; #10; // 1 + 0 + 1 = 2, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0002 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h2 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h0001; B = 16'h0001; Cin = 1'b1; #10; // 1 + 1 + 1 = 3, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0003 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h3 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h000F; B = 16'h0000; Cin = 1'b1; #10; // 15 + 0 + 1 = 16(10), Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0010 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h10 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h00FE; B = 16'h0001; Cin = 1'b1; #10; // 254 + 1 + 1 = 256(100), Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0100 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h100 && Cout===1'b0) ? "PASS" : "FAIL");

        // 3. 캐리 출력 테스트
        A = 16'hFFFF; B = 16'h0001; Cin = 1'b0; #10; // 65535 + 1 + 0 = 0, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_0000 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h0 && Cout===1'b1) ? "PASS" : "FAIL");

        A = 16'hFFFF; B = 16'h0000; Cin = 1'b1; #10; // 65535 + 0 + 1 = 0, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_0000 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h0 && Cout===1'b1) ? "PASS" : "FAIL");

        A = 16'h8000; B = 16'h8000; Cin = 1'b0; #10; // 32768 + 32768 + 0 = 0, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_0000 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h0 && Cout===1'b1) ? "PASS" : "FAIL");

        A = 16'hFFFF; B = 16'hFFFF; Cin = 1'b0; #10; // 65535 + 65535 + 0 = FFFE, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_FFFE | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'hFFFE && Cout===1'b1) ? "PASS" : "FAIL");

        A = 16'hFFFF; B = 16'hFFFF; Cin = 1'b1; #10; // 65535 + 65535 + 1 = FFFF, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_FFFF | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'hFFFF && Cout===1'b1) ? "PASS" : "FAIL");

        // 4. 캐리 전파 확인 (P 신호 테스트)
        A = 16'hFFFF; B = 16'h0000; Cin = 1'b0; #10; // Propagate=1, Generate=0, Cin=0 -> Sum=FFFF, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   FFFF | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'hFFFF && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'hAAAA; B = 16'h5555; Cin = 1'b0; #10; // Propagate=1 (AAAA^5555=FFFF), Generate=0, Cin=0 -> Sum=FFFF, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   FFFF | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'hFFFF && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'hAAAA; B = 16'h5555; Cin = 1'b1; #10; // Propagate=1 (AAAA^5555=FFFF), Generate=0, Cin=1 -> Sum=0000, Cout=1
        $display("%4dns | %04h     | %04h     |  %b  | 1_0000 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h0 && Cout===1'b1) ? "PASS" : "FAIL");

        // 5. 캐리 생성 확인 (G 신호 테스트)
        A = 16'h0001; B = 16'h0001; Cin = 1'b0; #10; // Propagate=0, Generate=0 (LSB G=0), Cin=0 -> Sum=2, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   0002 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h2 && Cout===1'b0) ? "PASS" : "FAIL");

        A = 16'h8000; B = 16'h0001; Cin = 1'b0; #10; // MSB=1, LSB=1 더함 -> Sum=8001, Cout=0
        $display("%4dns | %04h     | %04h     |  %b  |   8001 | %04h     |  %b   | %s", $time, A, B, Cin, Sum, Cout, (Sum===16'h8001 && Cout===1'b0) ? "PASS" : "FAIL");


        // --- 테스트 종료 ---
        $display("--------------------------------------------------------------------");
        $display("--- CLA16 Testbench Finished ---");
        $finish; // 시뮬레이션 종료

    end

endmodule