`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/02 01:13:13
// Design Name: 
// Module Name: comp_4_c2
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




module comp_4_c2(
    input [3:0] a,  // 4비트 입력 a
    input [3:0] b,  // 4비트 입력 b
    output a_big,   // a가 크면 1
    output b_big,   // b가 크면 1
    output equal    // 같으면 1
);

    // 모든 비트가 같은지 
    wire bit3_equal = (a[3] == b[3]);  // 3번 비트 
    wire bit2_equal = (a[2] == b[2]);  // 2번 비트
    wire bit1_equal = (a[1] == b[1]);  // 1번 비트
    wire bit0_equal = (a[0] == b[0]);  // 0번 비트 

    // 모든 비트가 같아야 equal=1
    assign equal = bit3_equal & bit2_equal & bit1_equal & bit0_equal;

    //a가 더 큰 경우 확인 
    // 경우 1: a[3]이 b[3]보다 큼 
    wire case1 = (a[3] > b[3]);

    // 경우 2: a[3] == b[3] 이고, a[2] > b[2]
    wire case2 = bit3_equal & (a[2] > b[2]);

    // 경우 3: 상위 2비트가 같고, a[1] > b[1]
    wire case3 = bit3_equal & bit2_equal & (a[1] > b[1]);

    // 경우 4: 상위 3비트가 같고, a[0] > b[0]
    wire case4 = bit3_equal & bit2_equal & bit1_equal & (a[0] > b[0]);

    // 위 4가지 경우 중 하나라도 해당되면 a_big=1
    assign a_big = case1 | case2 | case3 | case4;

    //  b가 더 큰 경우 확인 
    // equal도 아니고 a_big도 아니면 자동으로 b_big=1
    assign b_big = ~equal & ~a_big;

endmodule