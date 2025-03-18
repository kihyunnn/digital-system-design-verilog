`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/18 23:43:08
// Design Name: 
// Module Name: homework2
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

module hw2_logic_circuit( //��ǲ 3���� �ƿ�ǲ 1�� ����
    input A,
    input B,
    input C,
    input P,
    output Y
);
    // A xor B xor C xor D xor ������ �̷��� �߽��ϴ�
    // �߰���ȣ ����
    wire AB_xor;      // B�� C�� AND ���
    wire CP_xor;  // A�� B�� ������ C�� ������ AND ���
    
    // �߰���ȣ ���
    assign AB_xor = A ^ B;
    assign CP_xor = C ^ P;
    
    // ���� ��� ���
    assign Y = AB_xor ^ CP_xor;
endmodule