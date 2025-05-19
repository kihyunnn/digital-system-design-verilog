`timescale 1ns / 1ps

// 4비트 업/다운 카운터 모듈
module ud_counter_4(
    input               clk,    // 클럭 신호 
    input               rst,    // 비동기 리셋 신호 
    input               en,     // 카운터 동작 활성화 신호
    input               up,     // 카운트 업 제어 신호
    input               down,   // 카운트 다운 제어 신호
    output reg [3:0]    cnt     // 4비트 카운터 출력
);

    // clk의 상승 에지 또는 rst의 상승 에지에서 동작
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            // 리셋 시 카운터를 0으로 초기화
            cnt <= 4'b0000;
        end
        else begin
            if (en) begin
                // en이 활성화된 경우 업/다운 제어
                if (up) begin
                    // up이 1이면 카운트 증가
                    cnt <= cnt + 4'b0001;
                end
                else if (down) begin
                    // down이 1이면 카운트 감소
                    cnt <= cnt - 4'b0001;
                end
                else begin
                    // up/down 모두 0이면 유지
                    cnt <= cnt;
                end
            end
            else begin
                // en이 비활성화되면 카운터 강제 0
                cnt <= 4'd0;
            end
        end
    end

endmodule