`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/04/09 00:00:31
// Design Name:
// Module Name: Add3
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

`timescale 1ns / 1ps

module Add3 (  // Add3 Module 정의 시작
    input [3:0] binary_digit, // 입력: 4비트 Binary 값 (BCD digit)
    output [3:0] bcd_digit_out // 출력: 4비트 BCD 값 (보정된 BCD digit)
);

    reg [3:0] temp_digit; // Add-3 연산 결과를 임시 저장할 register

    always @(binary_digit) begin // 입력 binary_digit에 변화가 생기면 항상 실행
        if (binary_digit >= 5) begin // 만약 입력 값이 5 (0101) 이상이면
            temp_digit = binary_digit + 3; // BCD 보정을 위해 3 (0011)을 더함
        end else begin // 입력 값이 5 (0101) 미만이면
            temp_digit = binary_digit; // 보정 불필요, 입력 값을 그대로 유지
        end
    end

    assign bcd_digit_out = temp_digit; // temp_digit에 저장된 값을 출력 bcd_digit_out에 할당

endmodule // Add3 Module 정의 끝

