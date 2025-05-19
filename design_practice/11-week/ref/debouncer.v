// 모듈: debouncer
// 기능: 입력 신호(noisy)의 채터링 또는 바운싱을 제거하여
//       안정적인 출력 신호(debounced)를 생성함
// 파라미터:
//   N: 입력이 안정되었다고 판단할 클럭 사이클 수
//   K: N을 표현하기 위한 최소 카운터 비트 수 (K ≥ ceil(log2(N+1)))

module debouncer #(
    parameter N = 10, // 예: N=10일 때 10클럭 동안 안정적이어야 함
    parameter K = 4   // 예: N=10이면 4비트 필요 (2^4 > 10)
) (
    input  clk,         // 시스템 클럭
    input  noisy,       // 채터링이 포함된 입력 신호
    output debounced    // 디바운싱된 출력 신호
);

// 내부 카운터 레지스터 (K비트 크기)
reg [K-1:0] cnt;

// clk의 상승 에지마다 카운터 동작
always @(posedge clk) begin
    if (noisy) begin
        if (cnt < N)
            cnt <= cnt + 1'b1; // 안정 상태 도달 전: 카운트 증가
        // 안정 상태 도달 후: cnt 유지
    end else begin
        cnt <= 0; // 입력이 0이면 카운터 리셋
    end
end

// 카운터가 N에 도달하면 debounced 신호를 1로 출력
assign debounced = (cnt == N) ? 1'b1 : 1'b0;

endmodule