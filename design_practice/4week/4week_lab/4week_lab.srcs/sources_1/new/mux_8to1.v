`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 23:48:45
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1(
    input a,b,c,d,e,f,g,h,
    input [2:0] sel,
    output out
);

    wire [1:0] temp;

    // 첫 번째 레벨: 2개의 4to1 MUX
    mux_4to1 mux1(
        .a(a), //mux1의 입력 a에 in[0]을 연결
        .b(b), //mux1의 입력 b에 in[1]을 연결
        .c(c), //mux1의 입력 c에 in[2]을 연결
        .d(d), //mux1의 입력 d에 in[3]을 연결
        .sel(sel[1:0]),
        .out(temp[0])
    );

    mux_4to1 mux2(
        .a(e), //mux2의 입력 a에 in[4]을 연결
        .b(f), //mux2의 입력 b에 in[5]을 연결
        .c(g), //mux2의 입력 c에 in[6]을 연결
        .d(h), //mux2의 입력 d에 in[7]을 연결
        .sel(sel[1:0]),
        .out(temp[1])
    );

    // 두 번째 레벨: 1개의 2to1 MUX 
    mux_2to1 mux3(
        .a(temp[0]),
        .b(temp[1]),
        .sel(sel[2]),
        .out(out)
    );


endmodule