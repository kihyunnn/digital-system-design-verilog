`timescale 1ns / 1ps

module tb_comp_2;

    // 입력 신호
    reg [1:0] a, b;

    // 출력 신호
    wire a_big, b_big, equal;

    // 인스턴스화
    comp_2 uut (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin
        // 모니터 출력
        $display("Time\tA\tB\t|\ta_big\tb_big\tequal");
        $monitor("%g\t%b\t%b\t|\t%b\t%b\t%b", $time, a, b, a_big, b_big, equal);

        // 테스트 케이스
        a = 2'b00; b = 2'b00; #10; // 같음
        a = 2'b01; b = 2'b00; #10; // A > B
        a = 2'b10; b = 2'b11; #10; // B > A
        a = 2'b11; b = 2'b10; #10; // A > B
        a = 2'b01; b = 2'b01; #10; // 같음
        a = 2'b00; b = 2'b11; #10; // B > A
        a = 2'b10; b = 2'b01; #10; // A > B

        $finish;
    end

endmodule
