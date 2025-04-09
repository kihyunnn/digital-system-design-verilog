`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/08 22:52:53
// Design Name: 
// Module Name: tb_CLA4
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


module tb_CLA4( ); // 테스트벤치 모듈 선언 (입출력 포트 없음)

    reg [3:0] a_in, b_in; // 4비트 reg 타입 입력 신호 a_in, b_in 선언 (테스트 벡터 입력)
    reg c_in;          // 1비트 reg 타입 입력 신호 c_in 선언 (Carry 입력)
    wire [3:0] sum;      // 4비트 wire 타입 출력 신호 sum 선언 (덧셈 결과 확인)
    wire cout, gout, pout; // 1비트 wire 타입 출력 신호 cout, gout, pout 선언 (Carry 출력, Generate 출력, Propagate 출력 확인)

    // CLA4 모듈 인스턴스 생성 (UUT: Unit Under Test)
    CLA4 uut (
        .A(a_in),    // CLA4 모듈의 입력 A에 테스트벤치의 a_in 연결
        .B(b_in),    // CLA4 모듈의 입력 B에 테스트벤치의 b_in 연결
        .Cin(c_in),   // CLA4 모듈의 입력 Cin에 테스트벤치의 c_in 연결
        .sum(sum),   // CLA4 모듈의 출력 sum에 테스트벤치의 sum 연결
        .Cout(cout),  // CLA4 모듈의 출력 Cout에 테스트벤치의 cout 연결
        .Gout(gout),  // CLA4 모듈의 출력 Gout에 테스트벤치의 gout 연결
        .Pout(pout)   // CLA4 모듈의 출력 Pout에 테스트벤치의 pout 연결
    );

    initial begin // initial begin 블록 시작 (시뮬레이션 시작 시 한 번 실행되는 코드 블록)
        a_in = 0; b_in = 0; c_in = 0; // 초기 입력 값 0으로 설정
        #100; // 100 시간 단위 (time unit) 대기
        a_in = 4'b0101; b_in = 4'b0010; c_in = 0; // 새로운 입력 값 설정 (4'bxxxx: 4비트 2진수 표기)
        #100; // 100 시간 단위 대기
        a_in = 4'b0101; b_in = 4'b0010; c_in = 1'b1; // 새로운 입력 값 설정 (1'bx: 1비트 2진수 표기)
        #100; // 100 시간 단위 대기
        a_in = 4'b0111; b_in = 4'b0011; c_in = 0; // 새로운 입력 값 설정
        #100; // 100 시간 단위 대기
        a_in = 4'b0100; b_in = 4'b0110; c_in = 1'b1; // 새로운 입력 값 설정
        #100; // 100 시간 단위 대기
        a_in = 4'b0100; b_in = 4'b1010; c_in = 0; // 새로운 입력 값 설정
    end // initial begin 블록 종료

endmodule // 모듈 종료