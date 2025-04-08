`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 23:00:07
// Design Name: 
// Module Name: tb_CLA32
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

`timescale 1ns / 1ps

module tb_CLA32();

    reg [31:0] tb_a, tb_b;
    reg tb_Cin;
    wire [31:0] tb_sum;
    wire tb_Cout, tb_Gout, tb_Pout;

    CLA32 uut (
        .a(tb_a),
        .b(tb_b),
        .Cin(tb_Cin),
        .sum(tb_sum),
        .Cout(tb_Cout),
        .Gout(tb_Gout),
        .Pout(tb_Pout)
    );

    initial begin
        tb_a = 32'h0; tb_b = 32'h0; tb_Cin = 1'b0;
        #100;

        // 테스트 케이스 1: 0 + 0 + 0 (Zero 입력)
        tb_a = 32'h0; tb_b = 32'h0; tb_Cin = 1'b0;
        #100;

        // 테스트 케이스 2: 10 + 20 + 0 (작은 값 덧셈)
        tb_a = 32'ha; tb_b = 32'h14; tb_Cin = 1'b0; // 16진수 a = 10, 14 = 20
        #100;

        // 테스트 케이스 3: 1234 + 5678 + 0 (중간 값 덧셈)
        tb_a = 32'h1234; tb_b = 32'h5678; tb_Cin = 1'b0;
        #100;

        // 테스트 케이스 4: 0x12345678 + 0xABCDEF01 + 1 (큰 값 + Carry-in)
        tb_a = 32'h12345678; tb_b = 32'hABCDEF01; tb_Cin = 1'b1;
        #100;

        // 테스트 케이스 5: 중간 값 + 최대값 + 0 (최대값과의 조합)
        tb_a = 32'h7FFFFFFF; tb_b = 32'hFFFFFFFF; tb_Cin = 1'b0;
        #100;

        // 테스트 케이스 6: 최대값 + 1 + 0 (Carry 발생, 최대값 테스트 유지)
        tb_a = 32'hFFFFFFFF; tb_b = 32'h1; tb_Cin = 1'b0;
        #100;

        $finish;
    end

endmodule
