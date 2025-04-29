`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 07:06:46
// Design Name: 
// Module Name: bcd_converter_16_to_20
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

// bcd_converter_16_to_20.v
// 16비트 이진수를 20비트 BCD (5자리)로 변환하는 모듈
// Double Dabble (Shift-and-Add-3) 알고리즘 구현

// bcd_converter_16_to_20.v
// 16비트 이진수를 20비트 BCD (5자리)로 변환하는 모듈 (수정됨)
// Double Dabble (Shift-and-Add-3) 알고리즘 구현

`timescale 1ns / 1ps // 시뮬레이션 시간 단위 설정

module bcd_converter_16_to_20(
    input  [15:0] binary_in,    // 16비트 이진수 입력 (0 ~ 65535)
    output reg [19:0] bcd_out   // 20비트 BCD 출력 (5자리: 만, 천, 백, 십, 일)
);

    // 변환 과정을 위한 임시 레지스터
    // BCD 결과가 저장될 공간 (20비트) + 이진수 입력이 시프트될 공간 (16비트) = 총 36비트
    reg [35:0] temp_reg;


    integer k;

    always @(*) begin

        // 임시 레지스터 초기화:
        temp_reg = {20'b0, binary_in};

        // Double Dabble 알고리즘 수행 
        // 16비트 입력이므로 16번의 Add-3 & Shift과정을 반복합
        for (k = 0; k < 16; k = k + 1) begin

            // Shift 전에 각 BCD 자리(4비트 그룹)를 확인하여 5 이상이면 3을 더해 보정
            // 36비트 레지스터 [35:0] 기준 BCD 자리 위치:
            // [35:32], [31:28], [27:24], [23:20], [19:16]
            if (temp_reg[35:32] >= 5) temp_reg[35:32] = temp_reg[35:32] + 3;
            if (temp_reg[31:28] >= 5) temp_reg[31:28] = temp_reg[31:28] + 3;
            if (temp_reg[27:24] >= 5) temp_reg[27:24] = temp_reg[27:24] + 3;
            if (temp_reg[23:20] >= 5) temp_reg[23:20] = temp_reg[23:20] + 3;
            if (temp_reg[19:16] >= 5) temp_reg[19:16] = temp_reg[19:16] + 3;

            // --- Shift Step ---
            // 전체 레지스터를 왼쪽으로 1비트 시프트합니다.
            temp_reg = temp_reg << 1;
        end

        // --- 변환 완료 ---
        // 16번의 시프트 후, 최종 BCD 결과는 temp_reg의 상위 20비트([35:16])에 저장
        bcd_out = temp_reg[35:16]; 
    end

endmodule