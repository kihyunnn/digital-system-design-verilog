
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/22 06:13:07
// Design Name: 
// Module Name: seq_detector
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

`timescale 1ns/1ps

module seq_detector (
    input  wire clk,      // 시스템 클럭 
    input  wire rstn,     // 비동기식 액티브 Low 리셋
    input  wire w100,     // 100원 동전 입력 
    input  wire btn,      // 버튼 입력 
    output reg  sale,     // 출력  
    output reg  ret       // 돈 반환 
);

    // 상태 부호화 (
    parameter S0   = 2'd0;   // 0원 상태
    parameter S100 = 2'd1;   // 100원 상태
    parameter S200 = 2'd2;   // 200원 상태
    parameter S300 = 2'd3;   // 300원 상태

    // 현재 상태, 다음 상태 레지스터
    reg [1:0] cst, nst;

    // 다음 사이클에 출력할 sale, ret 펄스
    reg       sale_nxt, ret_nxt;

    // 상태 및 출력 레지스터 업데이트 (순차 블록)
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            // 리셋 시 초기 상태 및 출력 클리어
            cst  <= S0;
            sale <= 1'b0;
            ret  <= 1'b0;
        end
        else begin
            // 정상 작동 시 다음 상태, 다음 출력으로 갱신
            cst  <= nst;        // 다음 상태 등록
            sale <= sale_nxt;   // 음료 출력 등록
            ret  <= ret_nxt;    // 돈 반환 등록
        end
    end

    // 다음 상태 및 출력 결정 로직 (조합 블록)
    always @(*) begin
        // 기본값 설정: 변화 없음, 펄스 출력 0
        nst      = cst;
        sale_nxt = 1'b0;
        ret_nxt  = 1'b0;

        case (cst)

            // S0: 0원 상태
            S0: begin
                if (w100) begin
                    // 100원 투입 → 100원 상태로
                    nst = S100;
                end
                else if (btn) begin
                    // 버튼만 눌러도 잔돈 없으므로 무시
                    nst = S0;
                end
            end


            // S100: 100원 상태
            S100: begin
                if (w100) begin
                    // 추가 100원 투입 → 200원 상태로
                    nst = S200;
                end
                else if (btn) begin
                    // 버튼 → 100원 반환 후 0원 상태로
                    nst     = S0;
                    ret_nxt = 1'b1;
                end
            end


            // S200: 200원 상태
            S200: begin
                if (w100) begin
                    // 추가 100원 투입 → 300원 이상 상태로
                    nst = S300;
                end
                else if (btn) begin
                    // 버튼 → 200원 전액 반환 후 0원 상태로
                    nst     = S0;
                    ret_nxt = 1'b1;
                end
            end

            // S300: 300원 이상 상태
            S300: begin
                if (w100) begin
                    // 300원 이상 초과 동전 투입 시 초과분 바로 반환
                    nst     = S300;
                    ret_nxt = 1'b1;
                end
                else if (btn) begin
                    // 버튼 → 음료 출력, 잔액 0원으로
                    nst      = S0;
                    sale_nxt = 1'b1;
                end
            end

            // 디폴트: 안전을 위해 0원 상태로
            default: begin
                nst = S0;
            end

        endcase
    end

endmodule