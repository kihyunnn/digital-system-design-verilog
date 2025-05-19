// 기능: 입력 클럭(clk_ref)을 100분주하여 clk_div를 생성
module freq_div_100(
    input clk_ref,    // 입력: 기준 클럭
    input rst,        // 입력: 리셋 신호 
    output reg clk_div // 출력: 100분주된 클럭 (
);

// 내부 레지스터 선언
reg [5:0] cnt; // 6비트 카운터 레지스터. 0부터 63까지 표현 가능.
                // 100분주를 위해 0부터 49까지 카운트하므로 6비트 필요 (2^5 < 50 <= 2^6).

// always 블록: clk_ref의 상승 에지 또는 rst의 상승 에지에서 동작
always @(posedge clk_ref or posedge rst)
begin
    if(rst) // 리셋 신호가 활성화되면
    begin
        cnt <= 6'd0;      // 카운터 값을 0으로 초기화
        clk_div <= 1'b0;  // 분주된 클럭 출력을 0으로 초기화
    end
    else // 리셋이 아닐 경우 (clk_ref의 상승 에지에서 동작)
    begin
        if(cnt == 6'd49) // 카운터 값이 49에 도달하면 (총 50번 카운트 완료)
        begin
            cnt <= 6'd0;        // 카운터 값을 다시 0으로 리셋
            clk_div <= ~clk_div; // 분주된 클럭의 상태를 반전 (Toggle)
        end
        else // 카운터 값이 49가 아니면
        begin
            cnt <= cnt + 1'b1; // 카운터 값을 1 증가
        end
    end
end
endmodule