
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/09 00:01:07
// Design Name: 
// Module Name: BCD_Conv
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

// BCD_Conv.v

`timescale 1ns / 1ps

module BCD_Conv(
    input [7:0] binary_input,        // 8비트 이진수 입력
    output reg [3:0] hundreds,       // BCD로 변환된 백의 자리 출력 (4비트)
    output reg [3:0] tens,           //              십의 자리 출력 (4비트)
    output reg [3:0] units           //              일의 자리 출력 (4비트)
);

    // 총 20비트: 상위 12비트는 BCD 자리 (hundreds[3:0], tens[3:0], units[3:0]) 저장용
    // 하위 8비트는 입력된 binary 값을 담아서 shift 작업 수행
    reg [19:0] shift_reg;

    // 반복문을 위한 변수
    integer i;

    // 변환 동작: binary_input 이 변경될 때마다 always 블록 재실행
    always @(binary_input) begin
        // 초기화: shift 레지스터 전체를 0으로 초기화
        shift_reg = 20'b0;

        // binary_input을 shift_reg의 하위 8비트에 로드 (BCD 상위 12비트는 0 상태로 시작)
        shift_reg[7:0] = binary_input;

        // Shift-and-Add-3 알고리즘: 총 8번 반복 8비트니까 8번 시프트
        for (i = 0; i < 8; i = i + 1) begin

            // Step 1: 각 BCD 자리수가 5 이상이면 3을 더해줌 (Add-3)
            // 왜? BCD에선 5 이상이면 자리 올림 처리를 위해 +3 해야 함

            if (shift_reg[19:16] >= 5)
                shift_reg[19:16] = shift_reg[19:16] + 3;  // hundreds 자리 보정

            if (shift_reg[15:12] >= 5)
                shift_reg[15:12] = shift_reg[15:12] + 3;  // tens 자리 보정

            if (shift_reg[11:8] >= 5)
                shift_reg[11:8] = shift_reg[11:8] + 3;    // units 자리 보정

            // Step 2: 전체 shift_reg 레지스터를 왼쪽으로 1비트 shift
            // BCD 자리 포함해서 함께 밀려 올라감
            shift_reg = shift_reg << 1;
        end

        // 변환이 끝난 후 결과를 각각의 출력에 할당
        hundreds = shift_reg[19:16]; // BCD의 백의 자리
        tens     = shift_reg[15:12]; // BCD의 십의 자리
        units    = shift_reg[11:8];  // BCD의 일의 자리
    end

endmodule
