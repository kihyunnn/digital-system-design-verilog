`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:18:37
// Design Name: 
// Module Name: radix4_booth_multiplier
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



module radix4_booth_multiplier #(parameter N = 8)(
    input  wire signed [N-1:0] A,      // 피승수
    input  wire signed [N-1:0] B,      // 승수
    output wire signed [(2*N)-1:0] P   // 2N-bit 결과
);

    // 1) 승수에 가상 비트 B0 추가
    wire [N:0] extB = {B, 1'b0};

    // 2) 부분곱(pp) 저장용 배열 선언 (0..3)
    wire signed [N:0] pp [0:3];

    // 3) Booth 블록 4개 인스턴스화 (Radix-4)
    genvar i;
    generate
        for (i = 0; i < 4; i = i + 1) begin : BLOCK
            booth_block #(.N(N)) u_bb (
                .bits         (extB[2*i +: 3]),   // 3비트 슬라이스
                .multiplicand (A),
                .partial_product(pp[i])
            );
        end
    endgenerate

    // 4) 부호 확장 반복 횟수 상수로 지정 (N=8 → SBITS=7)
    localparam integer SBITS = N - 1;

    // 5) 부분곱을 위치에 맞춰 부호-확장 & 시프트
    wire signed [(2*N)-1:0] s0 = {{SBITS{pp[0][N]}}, pp[0]};
    wire signed [(2*N)-1:0] s1 = {{SBITS{pp[1][N]}}, pp[1]} << 2;
    wire signed [(2*N)-1:0] s2 = {{SBITS{pp[2][N]}}, pp[2]} << 4;
    wire signed [(2*N)-1:0] s3 = {{SBITS{pp[3][N]}}, pp[3]} << 6;

    // 6) 간단 CLA 모듈로 병렬 합산
    wire signed [(2*N)-1:0] t1, t2;
    cla #(.N(2*N)) add1 (.A(s0), .B(s1), .SUM(t1));
    cla #(.N(2*N)) add2 (.A(s2), .B(s3), .SUM(t2));
    cla #(.N(2*N)) add3 (.A(t1), .B(t2), .SUM(P));

endmodule
