`timescale 1ns / 1ps

module debouncer #(
    parameter N = 10, // 예시: 입력이 N 클럭 동안 안정되어야 함. 실제 값은 스위치 특성 및 클럭 속도에 따라 조절.
    parameter K = 4   // 예시: N=10일 때, 0~10까지 세려면 최소 4비트 필요 (2^3 < 10 < 2^4).
                      // 일반적으로 K >= ceil(log2(N+1))
) (
    input clk,          // 입력: 시스템 클럭
    input noisy,        // 입력: 채터링이 포함된 불안정한 신호 (주로 Synchronizer의 출력)
    output debounced    // 출력: 디바운싱 처리된 안정된 신호
);

// 내부 레지스터 선언
reg [K-1:0] cnt; // 카운터 레지스터. K 비트 크기.

// always 블록: clk의 상승 에지에서 동작
always @(posedge clk)
begin
    if (noisy) // noisy 입력이 '1' (High)인 경우
    begin
        if (cnt < N) // 카운터 값이 N보다 작으면 (아직 안정 상태 도달 전)
            cnt <= cnt + 1'b1; // 카운터 1 증가
        // else cnt는 N에 도달하여 더 이상 증가하지 않음 (포화)
    end
    else // noisy 입력이 '0' (Low)인 경우
    begin
        cnt <= 0; // 카운터를 0으로 리셋
    end
end

// assign 문: debounced 출력 로직
// 카운터(cnt)가 N에 도달했을 때만 debounced 출력을 '1'로 설정하고, 그 외에는 '0'으로 설정.
// 이는 noisy 입력이 N 클럭 사이클 동안 계속 '1'로 유지되었음을 의미함.
assign debounced = (cnt == N) ? 1'b1 : 1'b0;

endmodule