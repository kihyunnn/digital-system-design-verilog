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


// csa_multiplier_8x8_mod.v
// 8x8 Carry Save Multiplier (CSM) 모듈 - generate 문 사용 (수정 버전)
// 8비트 입력 A와 B를 곱하여 16비트 결과 Z를 생성합니다.
// Carry Save Adder Tree는 generate 문으로 구현하고, 최종 덧셈은 CLA16을 사용합니다.
module csa_multiplier_8x8(
    input [7:0] A,      // 8비트 피승수 입력
    input [7:0] B,      // 8비트 승수 입력
    output [15:0] Z     // 16비트 곱셈 결과 출력
);

    // --- 1. 부분곱 비트 생성 ---
    // 8x8 곱셈을 위해 64개의 부분곱 비트 p[i][j] = A[i] & B[j]를 생성합니다.
    wire [7:0] pp [7:0]; // 부분곱(Partial Product) 비트 저장 배열

    // generate 블록을 사용하여 반복적으로 부분곱 생성 로직 구현
    genvar row, col;
    generate
        for (row = 0; row < 8; row = row + 1) begin : pp_gen_loop_row
            for (col = 0; col < 8; col = col + 1) begin : pp_gen_loop_col
                // 각 위치의 부분곱은 해당 A 비트와 B 비트의 AND 연산
                assign pp[row][col] = A[row] & B[col];
            end
        end
    endgenerate

    // --- 2. Carry Save Adder (CSA) Tree ---
    // 64개의 부분곱 비트들을 여러 단계의 HA/FA를 통해
    // 16비트 Sum 벡터와 16비트 Carry 벡터로 압축합니다.

    // CSA Tree의 각 단계를 위한 Sum 및 Carry 와이어 배열 선언
    // 총 7개의 CSA 단계를 거칩니다. (8개의 부분곱 행 -> 7번의 3-to-2 또는 2-to-2 덧셈 단계)
    // s_csa[stage][bit_index], c_csa[stage][bit_index]
    wire [15:0] s_csa [0:6]; // 각 단계의 Sum 벡터
    wire [15:0] c_csa [0:6]; // 각 단계의 Carry 벡터 (다음 단계의 해당 비트로 가는 캐리 저장)

    // Stage 0: 첫 번째 부분곱 행(pp[0])과 두 번째 부분곱 행(pp[1], 1비트 왼쪽 시프트)을 더합니다.
    //          이는 Half Adder를 사용하는 것과 동일한 효과입니다.
    assign s_csa[0][0] = pp[0][0]; // 최하위 비트(Z[0])는 p[0][0]과 동일
    assign c_csa[0][0] = 1'b0;    // 컬럼 0으로 들어오는 캐리는 없음

    genvar k0;
    generate
        for (k0 = 1; k0 < 15; k0 = k0 + 1) begin : csa_stage0
            // k0 위치의 합계를 계산하기 위한 입력 비트들: pp[0][k0], pp[1][k0-1]
            wire p0_bit = (k0 < 8) ? pp[0][k0] : 1'b0; // pp[0] 행의 비트 (범위 체크)
            wire p1_bit = (k0 - 1 < 8) ? pp[1][k0 - 1] : 1'b0; // pp[1] 행의 비트 (1비트 시프트됨, 범위 체크)

            // Half Adder를 사용하여 2개 비트 덧셈 수행
            half_adder ha_s0 (
                .a(p0_bit), .b(p1_bit),
                .sum(s_csa[0][k0]),      // 결과 Sum은 현재 컬럼(k0)에 저장
                .carry(c_csa[0][k0])     // 결과 Carry는 현재 컬럼(k0)에 저장 (다음 단계의 컬럼 k0+1로 전달될 캐리)
            );
        end
        // Stage 0의 사용되지 않는 최상위 비트들은 0으로 설정
        assign s_csa[0][15] = 1'b0;
        assign c_csa[0][15] = 1'b0;
    endgenerate

    // Stages 1 to 6: 이전 단계의 Sum, 이전 단계의 Carry(시프트됨), 다음 부분곱 행(시프트됨)을 더합니다.
    //               이는 Full Adder를 사용하는 것과 동일한 효과입니다.
    genvar stage, k_fa;
    generate
        for (stage = 1; stage < 7; stage = stage + 1) begin : csa_reduction_stages
            // 각 단계의 컬럼 0은 계산할 필요 없음 (결과는 항상 0)
            assign s_csa[stage][0] = 1'b0;
            assign c_csa[stage][0] = 1'b0;

            // 컬럼 1부터 15까지 Full Adder를 사용하여 3개 비트를 더합니다.
            for (k_fa = 1; k_fa < 16; k_fa = k_fa + 1) begin : csa_bits_in_stage
                // FA의 세 입력:
                wire prev_sum   = s_csa[stage-1][k_fa]; // 1. 이전 단계의 Sum (같은 컬럼)
                wire prev_carry = c_csa[stage-1][k_fa-1]; // 2. 이전 단계의 Carry (왼쪽 컬럼에서 옴, 즉 이미 시프트됨)
                // 3. 현재 단계에서 더할 부분곱 행의 해당 비트 (pp[stage+1], 적절히 시프트됨)
                //    행 인덱스는 stage+1, 비트 인덱스는 k_fa-(stage+1)
                wire pp_bit = (stage+1 < 8 && k_fa-(stage+1) >= 0 && k_fa-(stage+1) < 8) ? pp[stage+1][k_fa-(stage+1)] : 1'b0;

                // Full Adder 인스턴스 생성
                full_adder fa_s (
                    .a(prev_sum),   // 입력 a: 이전 단계 Sum
                    .b(prev_carry), // 입력 b: 이전 단계 Carry (shifted)
                    .cin(pp_bit),   // 입력 cin: 현재 부분곱 비트
                    .sum(s_csa[stage][k_fa]), // 출력 Sum: 현재 단계 Sum
                    .cout(c_csa[stage][k_fa]) // 출력 Carry: 현재 단계 Carry (다음 단계의 컬럼 k+1로 갈 캐리)
                );
            end
        end
    endgenerate

    // --- CSA Tree 최종 결과 정리 ---
    // 마지막 6단계의 출력이 최종 Sum 벡터와 Carry 벡터가 됩니다.
    wire [15:0] final_sum   = s_csa[6];
    // 최종 Carry 벡터는 마지막 단계 캐리를 한 비트 왼쪽으로 시프트한 것과 같습니다.
    wire [15:0] final_carry = {c_csa[6][14:0], 1'b0};

    // --- 3. 최종 가산 (Final Adder) ---
    // CSA Tree 결과인 두 16비트 벡터(final_sum, final_carry)를 CLA16 가산기로 더합니다.
    // 최종 덧셈의 캐리 입력은 0입니다.

    // CLA16 가산기 모듈 인스턴스화
    CLA16 final_adder_unit (
        .A(final_sum),      // 입력 A: CSA Tree 최종 Sum 벡터
        .B(final_carry),    // 입력 B: CSA Tree 최종 Carry 벡터 (시프트됨)
        .Cin(1'b0),         // 캐리 입력은 0
        .Sum(Z),            // 최종 합계 출력을 모듈 출력 Z에 연결
        .Cout(),            // CLA16의 캐리 출력은 사용하지 않음
        .GP(),              // CLA16의 그룹 전파 신호 사용하지 않음
        .GG()               // CLA16의 그룹 생성 신호 사용하지 않음
    );

endmodule