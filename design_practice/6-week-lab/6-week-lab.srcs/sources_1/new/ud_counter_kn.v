`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/16 00:59:42
// Design Name: 
// Module Name: ud_counter_kn
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


module ud_counter_kn #(
    parameter K = 3,   // 카운터 출력의 비트 변수 (예: K=3이라면 cnt[2:0])
    parameter N = 8    // 카운터의 최대값 (모듈러 N) (예: 0~7까지 카운트)
)(
    input                    clk,    // 클럭 신호 
    input                    rstn,   // 리셋(0:리셋, 1:정상)
    input                    en,     // enable (1: 카운트 동작, 0:멈춤)
    input                    ud,     // Up/Down 제어 (1:업카운트, 0:다운카운트)
    output reg [K-1:0]       cnt     // 현재 카운트값
);

// clk의 상승 에지마다 실행됨
always @(posedge clk) begin
    // 리셋 입력이 0이면
    if(!rstn)
        cnt <= 0; //항상 카운터를 0으로 초기화
    // enable(en)이 1일 때만 카운터 동작
    else if(en) begin
        // 업카운트 모드
        if(ud) begin 
            // cnt가 최댓값(N-1)에 도달하면, 다시 0으로 돌아감 
            if(cnt == N-1)
                cnt <= 0;        
            // 아니라면 일반적으로 +1
            else
                cnt <= cnt + 1;
        end 
        // 다운카운트 모드(ud==0)
        else begin 
            // cnt가 0이면 N-1(최댓값)으로 순환
            if(cnt == 0)
                cnt <= N-1;      
            // 아니라면 보통 -1
            else
                cnt <= cnt - 1;
        end
    end
end

endmodule