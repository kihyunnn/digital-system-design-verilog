`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 22:30:57
// Design Name: 
// Module Name: mux_16to1_c1
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


module mux_16to1_c1(
    // 16-to-1 MUX 포트 정의
    input [15:0] in, // 16-bit 입력
    input [3:0] sel, // 4-bit 선택 신호
    output out // 출력
    );

    wire [3:0] temp; // 중간 결과를 저장할 4-bit wire

    // 4-to-1 MUX 인스턴스 생성
    // 1 단계 MUX
    mux_4to1 mux1( 
        .a(in[0]), //mux1의 입력 a에 in[0]을 연결
        .b(in[1]), //mux1의 입력 b에 in[1]을 연결
        .c(in[2]), //mux1의 입력 c에 in[2]을 연결
        .d(in[3]), //mux1의 입력 d에 in[3]을 연결
        .sel(sel[1:0]), //mux1의 선택 신호에 sel[1:0]을 연결
        .out(temp[0]) //mux1의 출력에 temp[0]을 연결
    );

    mux_4to1 mux2(
        .a(in[4]),
        .b(in[5]),
        .c(in[6]),
        .d(in[7]),
        .sel(sel[1:0]),
        .out(temp[1])
    );

    mux_4to1 mux3(
        .a(in[8]),
        .b(in[9]),
        .c(in[10]),
        .d(in[11]),
        .sel(sel[1:0]),
        .out(temp[2])
    );

    mux_4to1 mux4(
        .a(in[12]),
        .b(in[13]),
        .c(in[14]),
        .d(in[15]),
        .sel(sel[1:0]),
        .out(temp[3])
    );

    // 2 단계 MUX
    mux_4to1 mux5(
        .a(temp[0]), //mux5의 입력 a에 temp[0]을 연결
        .b(temp[1]), //mux5의 입력 b에 temp[1]을 연결
        .c(temp[2]), //mux5의 입력 c에 temp[2]을 연결
        .d(temp[3]), //mux5의 입력 d에 temp[3]을 연결
        .sel(sel[3:2]), //mux5의 선택 신호에 sel[3:2]을 연결
        .out(out) //mux5의 출력에 out을 연결
    );

endmodule
