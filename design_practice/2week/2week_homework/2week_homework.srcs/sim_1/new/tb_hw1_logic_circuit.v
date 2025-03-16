`timescale 1ns / 1ps
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


module hw1_logic_circuit_tb;
    // input : legŸ������ ����
    reg A, B, C;
    wire Y; //output : WIre Type���� ����
    
    // �׽�Ʈ�� ��� �ν��Ͻ�ȭ
    hw1_logic_circuit uut_hw1_logic_circuit(
        .A(A),
        .B(B),
        .C(C),
        .Y(Y)
    );
    
    // �׽�Ʈ �ó�����
    initial begin
        // ��� �Է� ���� �׽�Ʈ
             A = 0; B = 0; C = 0;
        #100 A = 0; B = 0; C = 1;  // 100 �ð� ���� �� A=0, B=0, C=1 �� ����
        #100 A = 0; B = 1; C = 0;  // �� 100 �ð� ���� �� A=0, B=1, C=0 �� ����
        #100 A = 0; B = 1; C = 1;  // �� 100 �ð� ���� �� A=0, B=1, C=1 �� ����
        #100 A = 1; B = 0; C = 0;  // �� 100 �ð� ���� �� A=1, B=0, C=0 �� ����
        #100 A = 1; B = 0; C = 1;  // �� 100 �ð� ���� �� A=1, B=0, C=1 �� ����
        #100 A = 1; B = 1; C = 0;  // �� 100 �ð� ���� �� A=1, B=1, C=0 �� ����
        #100 A = 1; B = 1; C = 1;  // �� 100 �ð� ���� �� A=1, B=1, C=1 �� ����
        
    end
    
endmodule