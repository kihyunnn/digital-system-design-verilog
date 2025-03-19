
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 09:09:23
// Design Name: 
// Module Name: tb_ha_1
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

`timescale 1ns/1ps

module tb_ha_1;

  // �Է�
  reg a, b;

  // ���
  wire sum, cout;

  // �׽�Ʈ ��� ��� �ν��Ͻ�ȭ
  ha_1 UUT (
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
  );

  // ��� ����͸�
  initial begin
    $monitor("Time=%0t a=%b b=%b sum=%b cout=%b", $time, a, b, sum, cout);
  end

  // �׽�Ʈ �ó�����
  initial begin
    // �׽�Ʈ ���̽� 1: 0 + 0
    a = 0; b = 0;
    #100;
    
    // �׽�Ʈ ���̽� 2: 0 + 1
    a = 0; b = 1;
    #100;
    
    // �׽�Ʈ ���̽� 3: 1 + 0
    a = 1; b = 0;
    #100;
    
    // �׽�Ʈ ���̽� 4: 1 + 1
    a = 1; b = 1;
    #100;

    // �ùķ��̼� ����
    $finish;
  end

endmodule
