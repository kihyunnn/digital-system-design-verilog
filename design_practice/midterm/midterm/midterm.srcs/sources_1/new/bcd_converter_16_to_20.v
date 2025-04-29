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
    // BCD 결과가 저장될 공간 (20비트) + 이진수 입력이 시프트될 공간 (16비트) = 총 36비트 필요
    reg [35:0] temp_reg;

    // 반복문을 위한 변수 (combinational logic에서는 loop counter로 사용)
    integer k;

    // 이진수 입력이 변경될 때마다 변환 로직 실행 (조합 논리)
    always @(*) begin
        // --- 변환 준비 ---
        // 1. 임시 레지스터 초기화: 상위 20비트(BCD 자리)는 0으로, 하위 16비트는 입력 이진수로 채웁니다.
        temp_reg = {20'b0, binary_in};

        // --- Double Dabble 알고리즘 수행 ---
        // 16비트 입력이므로 16번의 'Add-3 & Shift' 과정을 반복합니다.
        for (k = 0; k < 16; k = k + 1) begin

            // Shift 전에 각 BCD 자리(4비트 그룹)를 확인하여 5 이상이면 3을 더해 보정합니다.
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
        // 16번의 시프트 후, 최종 BCD 결과는 temp_reg의 상위 20비트([35:16])에 저장됩니다.
        bcd_out = temp_reg[35:16]; // <-- 수정된 부분! [35:16]을 할당합니다.
    end

endmodule