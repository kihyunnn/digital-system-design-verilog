`timescale 1ns / 1ps

module comp_2(
    input  [1:0] a,           // 비교할 2비트 입력 a (MSB: a[1], LSB: a[0])
    input  [1:0] b,           // 비교할 2비트 입력 b (MSB: b[1], LSB: b[0])
    output       a_big,       // a가 b보다 클 때 1
    output       b_big,       // b가 a보다 클 때 1
    output       equal        // a와 b가 같을 때 1
);

wire [1:0] bit_eq;           // 각 비트별(a[0] vs b[0], a[1] vs b[1]) 동등 비교 결과 저장
wire [1:0] bit_a_big;        // 각 비트별 a > b 결과 저장
wire [1:0] bit_b_big;        // 각 비트별 b > a 결과 저장

// 하위 비트(0번째 비트, LSB) 비교: comp_1 모듈 사용
comp_1 u0 (
    .a(a[0]),                 // a의 하위 비트 입력
    .b(b[0]),                 // b의 하위 비트 입력
    .a_big(bit_a_big[0]),     // 하위비트에서 a가 b보다 크면 1
    .b_big(bit_b_big[0]),     // 하위비트에서 b가 a보다 크면 1
    .equal(bit_eq[0])         // 하위비트가 같으면 1
);

// 상위 비트(1번째 비트, MSB) 비교: comp_1 모듈 사용
comp_1 u1 (
    .a(a[1]),                 // a의 상위 비트 입력
    .b(b[1]),                 // b의 상위 비트 입력
    .a_big(bit_a_big[1]),     // 상위비트에서 a가 b보다 크면 1
    .b_big(bit_b_big[1]),     // 상위비트에서 b가 a보다 크면 1
    .equal(bit_eq[1])         // 상위비트가 같으면 1
);

// a와 b의 모든 비트가 같을 때만 equal 출력이 1
assign equal = (bit_eq[0] & bit_eq[1]);

// a가 b보다 크려면,
// 1) 상위비트(a[1])가 b[1]보다 클 때
// 2) 상위비트가 같고, 하위비트(a[0])가 b[0]보다 클 때
assign a_big = bit_a_big[1] | (bit_a_big[0] & bit_eq[1]);

// b가 a보다 크려면,
// 1) 상위비트(b[1])가 a[1]보다 클 때
// 2) 상위비트가 같고, 하위비트(b[0])가 a[0]보다 클 때
assign b_big = bit_b_big[1] | (bit_b_big[0] & bit_eq[1]);

endmodule