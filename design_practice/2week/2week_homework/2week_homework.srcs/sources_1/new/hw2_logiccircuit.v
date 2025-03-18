`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 01:57:39
// Design Name: 
// Module Name: hw2_logiccircuit
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


module hw2_logiccircuit(
    input A, B, C, P, //4�� �Է� ��ȣ ����
    output Y // 1�� ��� ��ȣ ����
);
    // �߰� ��ȣ ����(wire)
    wire AB_xor;    // A�� B�� XOR ����� ���� �� �߰� ��ȣ
    wire CP_xor;    // C�� P�� XOR ����� ���� �� �߰� ��ȣ
    
    // �߰� ��ȣ ���
    assign AB_xor = A ^ B; //A �� B�� xor ������
    assign CP_xor = C ^ P; //C�� P�� xor ������
    
    // ���� ��� ���
    assign Y = AB_xor ^ CP_xor;
endmodule
