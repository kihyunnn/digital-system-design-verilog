
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 01:46:05
// Design Name: 
// Module Name: hw2_logic_circuit_tb
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

module hw21_logic_circuit_tb;
    // �Է� ��ȣ ���� (reg Ÿ��)
    reg A, B, C, P;
    // ��� ��ȣ ���� (wire Ÿ��)
    wire Y;
    
    // �׽�Ʈ�� ��� �ν��Ͻ�ȭ
    hw2_logic_circuit uut_hw2_logic_circuit(
        .A(A),
        .B(B),
        .C(C),
        .P(P),
        .Y(Y)
    );
    
    // �׽�Ʈ �ó�����
    initial begin
        // ��� ��� �׽�Ʈ
             A = 0; B = 0; C = 0; P = 0;  // 0000 100n���� �ؿ� ����� �����
        #100 A = 0; B = 0; C = 0; P = 1;  // 0001
        #100 A = 0; B = 0; C = 1; P = 0;  // 0010
        #100 A = 0; B = 0; C = 1; P = 1;  // 0011
        #100 A = 0; B = 1; C = 0; P = 0;  // 0100
        #100 A = 0; B = 1; C = 0; P = 1;  // 0101
        #100 A = 0; B = 1; C = 1; P = 0;  // 0110
        #100 A = 0; B = 1; C = 1; P = 1;  // 0111
        #100 A = 1; B = 0; C = 0; P = 0;  // 1000
        #100 A = 1; B = 0; C = 0; P = 1;  // 1001
        #100 A = 1; B = 0; C = 1; P = 0;  // 1010
        #100 A = 1; B = 0; C = 1; P = 1;  // 1011
        #100 A = 1; B = 1; C = 0; P = 0;  // 1100
        #100 A = 1; B = 1; C = 0; P = 1;  // 1101
        #100 A = 1; B = 1; C = 1; P = 0;  // 1110
        #100 A = 1; B = 1; C = 1; P = 1;  // 1111
        
    end


    
endmodule