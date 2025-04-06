`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 02:01:38
// Design Name: 
// Module Name: tb_comp_4_c1
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

module tb_comp_4_c1();

    // 입력 신호 (4비트)
    reg [3:0] a;
    reg [3:0] b;
    
    // 출력 신호
    wire a_big;
    wire b_big;
    wire equal;
    
    // 테스트 모듈 
    comp_4_c1 uut (
        .a(a),
        .b(b),
        .a_big(a_big),
        .b_big(b_big),
        .equal(equal)
    );

    initial begin

        
        // 테스트 케이스
        a = 4'b0000; b = 4'b0000; #100; // equal
        a = 4'b1100; b = 4'b1010; #100; // a_big (
        a = 4'b0011; b = 4'b0101; #100; // b_big 
        a = 4'b1111; b = 4'b1111; #100; // equal
        
    end
    
endmodule