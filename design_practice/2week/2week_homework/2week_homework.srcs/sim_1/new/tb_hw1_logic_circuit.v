
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/16 19:24:01
// Design Name: 
// Module Name: tb_hw1_logic_circuit
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
module hw1_logic_circuit_tb;
    // input : leg타입으로 선언
    reg A, B, C;
    wire Y; //output : WIre Type으로 선언
    
    // 테스트할 모듈 인스턴스화
    hw1_logic_circuit uut_hw1_logic_circuit(
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );
    
    // 테스트 시나리오
    initial begin
        // 모든 입력 조합 테스트
             A = 0; B = 0; C = 0; //초기값 설정 (000)
        #100 A = 0; B = 0; C = 1;  // 100ns 후 입력 변경 (001)
        #100 A = 0; B = 1; C = 0;  // 200ns 후 입력 변경 (010)
        #100 A = 0; B = 1; C = 1;  // 300ns 후 입력 변경 (011)
        #100 A = 1; B = 0; C = 0;  // 400ns 후 입력 변경 (100
        #100 A = 1; B = 0; C = 1;  // 500ns 후 입력 변경 (101)
        #100 A = 1; B = 1; C = 0;  // 600ns 후 입력 변경 (110)
        #100 A = 1; B = 1; C = 1;  // 700ns 후 입력 변경 (111)
        
    end
    
endmodule