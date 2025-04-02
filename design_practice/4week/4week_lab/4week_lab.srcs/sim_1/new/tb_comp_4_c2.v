`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 02:01:49
// Design Name: 
// Module Name: tb_comp_4_c2
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


module tb_comp_4_c2();

    // 입력 신호 (4비트)
    reg [3:0] a;
    reg [3:0] b;
    
    // 출력 신호
    wire a_big;
    wire b_big;
    wire equal;
    
    // 테스트 모듈
    comp_4_c2 uut (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin
        // 테스트케이스
        a = 4'b0000; b = 4'b0000; #100; // equal
        a = 4'b1100; b = 4'b1010; #100; // a > b
        a = 4'b1011; b = 4'b0101; #100; // a > b
        a = 4'b1111; b = 4'b1111; #100; // b > a

        
        end

    
endmodule