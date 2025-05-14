`timescale 1ns / 1ps
    // lfsr 모듈: 16비트 LFSR (Linear Feedback Shift Register)
module lfsr(
    input clk, // 클럭 입력
    input rstn, // 리셋 입력 (active low)
    output [15:0] out_p, // 16비트 병렬 출력
    output out_s // 직렬 출력
);
    
    reg [15:0] data; // LFSR 데이터 레지스터
    reg in_feedback, out_serial_reg; // 피드백 입력 및 직렬 출력용 레지스터 (강의자료 변수명 참조: in, out)
    
        // LFSR 동작: 클럭의 상승 에지 또는 리셋 신호의 하강 에지에 반응
    always @ (posedge clk or negedge rstn)
    begin
        if (!rstn) // 리셋 조건 (rstn이 0일 때)
        begin
            data <= 16'h1234; // 초기 시드 값으로 설정
                // in_feedback <= 1'b0; // 피드백 입력 초기화 (강의자료의 n_n_은 용도 불명확, in으로 대체)
            out_serial_reg <= data[15]; // 직렬 출력 초기화
        end
        else // 정상 동작
        begin
                // LFSR 피드백 로직: data[15] ^ data[13] ^ data[12] ^ data[10]
            in_feedback <= data[15] ^ data[13] ^ data[12] ^ data[10];
            out_serial_reg <= data[15]; // 현재 최상위 비트를 직렬 출력으로 설정
            data <= {data[14:0], in_feedback}; // 쉬프트 및 새 피드백 값 입력
        end
    end
    
    assign out_p = data; // 병렬 출력 할당
    assign out_s = out_serial_reg; // 직렬 출력 할당
    
endmodule