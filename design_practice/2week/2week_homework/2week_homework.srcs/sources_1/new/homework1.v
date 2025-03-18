`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/16 19:13:14
// Design Name: 
// Module Name: homework1
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

module hw1_logic_circuit( //��ǲ 3���� �ƿ�ǲ 1�� ����
    input A,
    input B,
    input C,
    output Y
);
    // BC + AB'C' ������ �̷��� �߽��ϴ�
    // �߰���ȣ ����
    wire BC;      // B�� C�� AND ���
    wire AB_not_C_not;  // A�� B�� ������ C�� ������ AND ���
    
    // �߰���ȣ ���
    assign BC = B & C; //&�� and�� ����
    assign AB_not_C_not = A & ~B & ~C;
    
    // ���� ��� ���
    assign Y = BC | AB_not_C_not; // |�� or�� ����
endmodule
