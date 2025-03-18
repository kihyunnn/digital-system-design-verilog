
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
             A = 0; B = 0; C = 0; //�ʱⰪ ���� (000)
        #100 A = 0; B = 0; C = 1;  // 100ns �� �Է� ���� (001)
        #100 A = 0; B = 1; C = 0;  // 200ns �� �Է� ���� (010)
        #100 A = 0; B = 1; C = 1;  // 300ns �� �Է� ���� (011)
        #100 A = 1; B = 0; C = 0;  // 400ns �� �Է� ���� (100
        #100 A = 1; B = 0; C = 1;  // 500ns �� �Է� ���� (101)
        #100 A = 1; B = 1; C = 0;  // 600ns �� �Է� ���� (110)
        #100 A = 1; B = 1; C = 1;  // 700ns �� �Է� ���� (111)
        
    end
    
endmodule