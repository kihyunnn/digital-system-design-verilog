`timescale 1ns / 1ps

module homework1(
    input  [2:0] sw,     // sw[0]=a, sw[1]=b, sw[2]=cin
    output [1:0] led     // led[1]=sum, led[0]=cout
);
    wire a   = sw[0];
    wire b   = sw[1];
    wire cin = sw[2];
    wire sum, cout;

    // 내부 full_adder 인스턴스
    full_adder U0 (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    assign led[1] = sum;
    assign led[0] = cout;

endmodule

// 내부 모듈 정의 (재사용 가능)
module full_adder(
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = ((a ^ b) & cin) | (a & b);
endmodule
