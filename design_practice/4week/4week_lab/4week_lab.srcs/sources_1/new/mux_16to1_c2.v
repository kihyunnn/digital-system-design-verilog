`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 23:52:14
// Design Name: 
// Module Name: mux_16to1_c2
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



module mux_16to1_c2(
    // 16-to-1 MUX 포트 정의
    input [15:0] in, // 16-bit 입력
    input [3:0] sel, // 4-bit 선택 신호
    output out // 출력
    );

    wire [1:0] temp; // 중간 결과를 저장할 2-bit wire

    // 4-to-1 MUX 인스턴스 생성
    // 1 단계 MUX
    mux_8to1 mux1( 
        .a(in[0]), //mux1의 입력 a에 in[0]을 연결
        .b(in[1]), //mux1의 입력 b에 in[1]을 연결
        .c(in[2]), //mux1의 입력 c에 in[2]을 연결
        .d(in[3]), //mux1의 입력 d에 in[3]을 연결
        .e(in[4]), //mux1의 입력 e에 in[4]을 연결
        .f(in[5]), //mux1의 입력 f에 in[5]을 연결
        .g(in[6]), //mux1의 입력 g에 in[6]을 연결
        .h(in[7]), //mux1의 입력 h에 in[7]을 연결
        .sel(sel[2:0]), //mux1의 선택 신호에 sel[2:0]을 연결
        .out(temp[0]) //mux1의 출력에 temp[0]을 연결
    );

    mux_8to1 mux2(
        .a(in[8]), //mux2의 입력 a에 in[8]을 연결
        .b(in[9]), //mux2의 입력 b에 in[9]을 연결
        .c(in[10]), //mux2의 입력 c에 in[10]을 연결
        .d(in[11]), //mux2의 입력 d에 in[11]을 연결
        .e(in[12]), //mux2의 입력 e에 in[12]을 연결
        .f(in[13]), //mux2의 입력 f에 in[13]을 연결
        .g(in[14]), //mux2의 입력 g에 in[14]을 연결
        .h(in[15]), //mux2의 입력 h에 in[15]을 연결
        .sel(sel[2:0]), //mux2의 선택 신호에 sel[2:0]을 연결
        .out(temp[1]) //mux2의 출력에 temp[1]을 연결
    );

    //2 단계 2to1 MUX
    mux_2to1 mux3(
        .a(temp[0]), //mux3의 입력 a에 temp[0]을 연결
        .b(temp[1]), //mux3의 입력 b에 temp[1]을 연결
        .sel(sel[3]), //mux3의 선택 신호에 sel[3]을 연결
        .out(out) //mux3의 출력에 out을 연결
    );




endmodule
