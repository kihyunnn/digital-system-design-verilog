`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/15 15:24:26
// Design Name: 
// Module Name: lsfr_4b
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//   4bit LFSR (Q4, Q1 XOR feedback, reset value = 4'b1000)
// Dependencies: 
// 
// Revision:
// Revision 0.01 - LFSR 구조로 변형
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/15 15:24:26
// Design Name: 
// Module Name: lsfr_4b
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


module lsfr_4b(
    input         clk,    // 클록 신호 (회로 동작 타이밍 제어)
    input         rst,    // 리셋 신호 (레지스터 초기화)
    input         ld,     // 로드 신호 (초기값 로딩)
    input         mode,   // 동작 모드 (1: 왼쪽 시프트, 0: 오른쪽 시프트)
    output reg [3:0] par_out // 병렬 출력 데이터 (4비트 출력)
);

wire feedback; // XOR 피드백 비트

// Q1(par_out[0])과 Q4(par_out[3])의 XOR 결과가 피드백
assign feedback = par_out[0] ^ par_out[3];

// 클록 상승 에지 또는 리셋 하강 에지에서 동작
always @ (posedge clk or negedge rst)
begin
    if(!rst)               // 비동기 리셋: rst가 0이면
        par_out <= #1 4'b0000;  // 출력 레지스터를 모두 0으로 초기화
    else if(ld)            // 로드: ld가 1이면
        par_out <= #1 4'b1000;  // 사진에 표시된 초기값 "1000" 로드 (Q1=1, Q2=0, Q3=0, Q4=0)
    else                   // 리셋도 로드도 아닌 일반 동작
    begin
        if(mode)           // 왼쪽 시프트 모드 (mode=1)
            par_out <= #1 {par_out[2:0], feedback};  // 왼쪽으로 시프트하고 피드백 비트 주입
                                                     // [3,2,1,0] → [2,1,0,feedback]
        else               // 오른쪽 시프트 모드 (mode=0)
            par_out <= #1 {feedback, par_out[3:1]};  // 오른쪽으로 시프트하고 피드백 비트 주입
                                                     // [3,2,1,0] → [feedback,3,2,1]
    end
end

endmodule