`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 06:47:45
// Design Name: 
// Module Name: csa_multiplier_8x8
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

// csa_multiplier_8x8.v
// 8비트 x 8비트 곱셈기
// Carry Save Adder(CSA) 트리와 최종 CLA 가산기를 사용하여 16비트 결과를 생성

module csa_multiplier_8x8(
    input [7:0] A,      // 8비트 피승수
    input [7:0] B,      // 8비트 승수
    output [15:0] Z     // 16비트 곱셈 결과
);

    // 부분곱(Partial Product) 생성 
    // A[i] & B[j]로 8x8개의 부분곱 비트를 생성
    wire [7:0] pp [7:0]; // 부분곱 비트 저장용 배열

    genvar row, col;
    generate
        for (row = 0; row < 8; row = row + 1) begin : pp_gen_loop_row
            for (col = 0; col < 8; col = col + 1) begin : pp_gen_loop_col
                assign pp[row][col] = A[row] & B[col];
            end
        end
    endgenerate

    // 2. Carry Save Adder (CSA) Tree 구성 
    // 부분곱들을 CSA 트리를 통해 Sum, Carry로 단계별 압축

    wire [15:0] s_csa [0:6]; // 각 단계의 Sum 결과
    wire [15:0] c_csa [0:6]; // 각 단계의 Carry 결과

    // Stage 0: 첫 두 부분곱 행(pp[0], pp[1])을 Half Adder로 압축
    assign c_csa[0][0] = 1'b0; // 컬럼 0의 초기 캐리 없음
    genvar k0;
    generate
        for (k0 = 1; k0 < 15; k0 = k0 + 1) begin : csa_stage0
            wire p0_bit = (k0 < 8) ? pp[0][k0] : 1'b0;
            wire p1_bit = (k0-1 < 8) ? pp[1][k0-1] : 1'b0;

            half_adder ha_s0 (
                .a(p0_bit), 
                .b(p1_bit),
                .sum(s_csa[0][k0]),
                .carry(c_csa[0][k0])
            );
        end
        assign s_csa[0][15] = 1'b0; // 최상위 비트는 0
        assign c_csa[0][15] = 1'b0;
        assign s_csa[0][0] = 1'b0;
    endgenerate

    //Stage 1~6: Full Adder로 3개 비트 압축 
    // (이전 단계 Sum, 이전 단계 Carry, 다음 부분곱 행)
    genvar stage, k_fa;
    generate
        for (stage = 1; stage < 7; stage = stage + 1) begin : csa_reduction_stages
            assign s_csa[stage][0] = 1'b0;
            assign c_csa[stage][0] = 1'b0;

            for (k_fa = 1; k_fa < 16; k_fa = k_fa + 1) begin : csa_bits_in_stage
                wire prev_sum   = s_csa[stage-1][k_fa];
                wire prev_carry = c_csa[stage-1][k_fa-1];
                wire pp_bit = (stage+1 < 8 && k_fa-(stage+1) >= 0 && k_fa-(stage+1) < 8) ? pp[stage+1][k_fa-(stage+1)] : 1'b0;

                full_adder fa_s (
                    .a(prev_sum),
                    .b(prev_carry),
                    .cin(pp_bit),
                    .sum(s_csa[stage][k_fa]),
                    .cout(c_csa[stage][k_fa])
                );
            end
        end
    endgenerate

    // 3. 최종 결과 생성 
    // 마지막 CSA 단계 결과를 Sum/Carry로 받아 최종 덧셈 준비

    wire [15:0] final_sum   = {s_csa[6][15:1], pp[0][0]}; // Sum 벡터
    wire [15:0] final_carry = {c_csa[6][14:0], 1'b0};     // Carry 벡터 (왼쪽으로 1비트 이동)

    // 4. 최종 덧셈 (Final CLA Adder) 
    CLA16 final_adder_unit (
        .A(final_sum),
        .B(final_carry),
        .Cin(1'b0),   // 캐리 입력 없음
        .Sum(Z),      // 최종 출력
        .Cout(),      // 최종 캐리 무시
        .GP(),
        .GG()
    );

endmodule
