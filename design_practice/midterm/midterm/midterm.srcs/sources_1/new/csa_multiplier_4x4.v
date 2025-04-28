`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/29 05:58:47
// Design Name: 
// Module Name: csa_multiplier_4x4
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


// 4x4 Carry Save Multiplier (CSM) 모듈
// 슬라이드 이미지 코드를 기반으로 하위 모듈을 명시적으로 인스턴스화합니다.
// 입력 4비트 A, 4비트 B를 곱하여 8비트 결과 z를 출력합니다.
module csa_multiplier_4x4( // 모듈 이름 변경: csa_multiplier_4x4
    input [3:0] A,      // 4비트 피승수 (Multiplicand)
    input [3:0] B,      // 4비트 승수 (Multiplier)
    output [7:0] z      // 8비트 곱셈 결과 (Product)
);

    // 내부 와이어들
    // p[i][j]: A[i] * B[j] 의 부분곱 비트 (i번째 비트 of A & j번째 비트 of B)
    wire [3:0] p [3:0]; // p[0][0]~p[3][3] 까지 총 16개 비트

    // Carry Save Adder Tree 중간 결과 와이어들 (슬라이드 이미지의 wire 선언 및 인스턴스 연결 기반)
    wire [10:0] c; // 캐리 와이어들 (슬라이드 이미지에서는 c[0]~c[10]이 사용됨)
    wire [5:0] s;  // 합계 와이어들 (슬라이드 이미지에서는 s[0]~s[5]이 사용됨)

    // ==================================================================
    // 1. Partial Product Bits (부분곱 비트) 생성
    // p[i][j] = A[i] & B[j]
    // generate 문 대신 각 비트를 명시적으로 assign 합니다.
    // 예: p[0][0] = A[0] & B[0]; p[0][1] = A[0] & B[1]; ... p[3][3] = A[3] & B[3];
    assign p[0][0] = A[0] & B[0];
    assign p[0][1] = A[0] & B[1];
    assign p[0][2] = A[0] & B[2];
    assign p[0][3] = A[0] & B[3];

    assign p[1][0] = A[1] & B[0];
    assign p[1][1] = A[1] & B[1];
    assign p[1][2] = A[1] & B[2];
    assign p[1][3] = A[1] & B[3];

    assign p[2][0] = A[2] & B[0];
    assign p[2][1] = A[2] & B[1];
    assign p[2][2] = A[2] & B[2];
    assign p[2][3] = A[2] & B[3];

    assign p[3][0] = A[3] & B[0];
    assign p[3][1] = A[3] & B[1];
    assign p[3][2] = A[3] & B[2];
    assign p[3][3] = A[3] & B[3];


    // ==================================================================
    // 2. Carry Save Adder Tree (CSA Tree) 구성
    // Half Adder (HA) 및 Full Adder (FA) 인스턴스를 사용하여 부분곱 비트들을 더해 나갑니다.
    // 슬라이드 이미지의 인스턴스 이름(h0, h1, h2, f0, f1, f2 등) 및 연결을 따릅니다.

    // Row 0 (슬라이드 이미지 //row 0): HA 사용
    // 가장 아랫줄 덧셈 시작 (weighted column 기준 bit 1부터)
    half_adder h0(.a(p[0][1]), .b(p[1][0]), .sum(z[1]), .carry(c[0])); // A[0]B[1] + A[1]B[0] -> Product bit 1, Carry 0
    half_adder h1(.a(p[1][1]), .b(p[2][0]), .sum(s[0]), .carry(c[1])); // A[1]B[1] + A[2]B[0] -> Sum 0, Carry 1
    half_adder h2(.a(p[2][1]), .b(p[3][0]), .sum(s[1]), .carry(c[2])); // A[2]B[1] + A[3]B[0] -> Sum 1, Carry 2

    // Row 1 (슬라이드 이미지 //row 1): FA 사용
    // 이전 row의 Sum/Carry와 새로운 부분곱 비트 더함
    // f0: weighted column 기준 bit 2 (p[0][2] + c[0] + s[0])
    full_adder f0(.a(p[0][2]), .b(c[0]), .cin(s[0]), .sum(s[0]), .cout(c[3])); // 슬라이드에서 s[0]이 재사용됨. 주의 필요.
    // f1: weighted column 기준 bit 3 (p[1][2] + c[1] + s[1])
    full_adder f1(.a(p[1][2]), .b(c[1]), .cin(s[1]), .sum(s[1]), .cout(c[4])); // 슬라이드에서 s[1]이 재사용됨. 주의 필요.
    // f2: weighted column 기준 bit 4 (p[2][2] + c[2] + p[3][1])
    full_adder f2(.a(p[2][2]), .b(c[2]), .cin(p[3][1]), .sum(s[2]), .cout(c[5])); // 슬라이드에서 s[2]가 재사용됨. p[3][1]은 세 번째 부분곱의 1번째 비트

    // Row 2 (슬라이드 이미지 //row 2): FA 사용
    // 이전 row의 Sum/Carry와 새로운 부분곱 비트 더함
    // f3: weighted column 기준 bit 3 (p[0][3] + c[3] + s[2]) -> 이 s[2]는 Row 1의 f2 출력 s[2]임
    full_adder f3(.a(p[0][3]), .b(c[3]), .cin(s[2]), .sum(s[2]), .cout(c[6])); // 슬라이드에서 s[2]가 재사용됨.
    // f4: weighted column 기준 bit 4 (p[1][3] + c[4] + s[3]) -> 이 s[3]는 Row 1의 f2 출력 s[3]임 (슬라이드 인스턴스 연결에 s[3]으로 표시됨)
    full_adder f4(.a(p[1][3]), .b(c[4]), .cin(s[3]), .sum(s[3]), .cout(c[7])); // 슬라이드에서 s[3]가 재사용됨.
    // f5: weighted column 기준 bit 5 (p[2][3] + c[5] + s[4]) -> 이 s[4]는 Row 1의 f2 출력 s[4]임 (슬라이드 인스턴스 연결에 s[4]으로 표시됨)
    full_adder f5(.a(p[2][3]), .b(c[5]), .cin(s[4]), .sum(s[4]), .cout(c[8])); // 슬라이드에서 s[4]가 재사용됨.

    // Row 3 (슬라이드 이미지 //row 3): FA/HA 사용 - 최종 덧셈 단계
    // 이 단계에서는 CSA Tree의 마지막 Sum/Carry들을 더하여 최종 Product 비트를 생성합니다.
    // h3: weighted column 기준 bit 4 (c[6] + s[4]) -> 이 s[4]는 Row 2의 f5 출력 sum s[4]임
    half_adder h3(.a(c[6]), .b(s[4]), .sum(z[4]), .carry(c[9])); // Result bit 4, Carry 9
    // f6: weighted column 기준 bit 5 (c[9] + c[7] + s[5]) -> 이 s[5]는 Row 2의 f5 출력 sum s[5]임 (슬라이드 인스턴스 연결에 s[5]로 표시됨)
    full_adder f6(.a(c[9]), .b(c[7]), .cin(s[5]), .sum(z[5]), .cout(c[10])); // Result bit 5, Carry 10
    // f7: weighted column 기준 bit 6 (c[10] + c[8] + p[3][3]) -> c[8]는 Row 2의 f5 출력 carry c[8]임, p[3][3]는 마지막 부분곱 비트
    full_adder f7(.a(c[10]), .b(c[8]), .cin(p[3][3]), .sum(z[6]), .cout(z[7])); // Result bit 6, Result bit 7 (Carry)


    // ==================================================================
    // 3. Final Product (최종 곱셈 결과) 연결
    // z[0]는 가장 하위 비트로 부분곱 비트 p[0][0]과 동일
    assign z[0] = p[0][0];

    // z[1]~z[7]는 CSA Tree 마지막 단계의 Adder Sum/Carry 출력에 연결됨
    // assign z[1] = h0.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[2] = f0.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[3] = f3.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[4] = h3.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[5] = f6.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[6] = f7.sum; // 이미 인스턴스 연결에서 처리됨
    // assign z[7] = f7.cout; // f7의 carry out이 Product의 최상위 비트가 됨


endmodule