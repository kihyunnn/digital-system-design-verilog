`timescale 1ns/1ps
module booth_mul_top(
    input  wire              clk,
    input  wire              rst,
    input  wire              start,        // 1-펄스
    input  wire signed [7:0] Mcand,        // A
    input  wire signed [7:0] Mplier,       // B
    output reg  signed [15:0] Product,
    output reg               done          // 완료 1-클럭
);
    //Datapath 인스턴스 
    wire signed [15:0] P;
    radix4_booth_multiplier u_datapath(
        .A(Mcand), .B(Mplier), .P(P)
    );

    //FSM 상태 
    parameter IDLE=2'b00, LOAD=2'b01, WAIT_CALC=2'b10, DONE=2'b11;
    reg [1:0] state, n_state;
    reg [2:0] cyc_cnt;   // 0~3 : Radix-4 시리얼 4클럭

    // 상태 레지스터
    always @(posedge clk or posedge rst)
        if(rst) state <= IDLE;
        else    state <= n_state;

    // 순차 로직
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            cyc_cnt <= 0;
            done    <= 0;
            Product <= 0;
        end else begin
            case(state)
                IDLE: done <= 0;                       // 대기
                LOAD: begin                           // 1클럭 준비
                    cyc_cnt <= 3'd3;                  // 이후 3클럭 더
                end
                WAIT_CALC: cyc_cnt <= cyc_cnt - 1;    // 카운트다운
                DONE: begin
                    Product <= P;                     // 결과 래치
                    done    <= 1;                     // 완료 플래그
                end
            endcase
        end
    end

    // 다음 상태 조합논리
    always @(*) begin
        case(state)
            IDLE      : n_state =  start ? LOAD      : IDLE;
            LOAD      : n_state =  WAIT_CALC;                 // 1클럭 후
            WAIT_CALC : n_state =  (cyc_cnt==0) ? DONE : WAIT_CALC;
            DONE      : n_state =  start ? DONE : IDLE;       // 클리어 대기
            default   : n_state =  IDLE;
        endcase
    end
endmodule
