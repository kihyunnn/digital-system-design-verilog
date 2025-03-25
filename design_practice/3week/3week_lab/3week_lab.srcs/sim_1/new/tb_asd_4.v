
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 02:34:32
// Design Name: 
// Module Name: tb_asd_4
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


`timescale 1ns / 1ps

module tb_asd_4;// Testbench module for asd_4

    // Input
    reg [3:0] A;
    reg [3:0] B;
    reg mode;

    // output
    wire [3:0] Sum;
    wire Cout;

    // UUT (Unit Under Test) 
    asd_4 UUTt (
        .A(A),
        .B(B),
        .mode(mode),
        .Sum(Sum),
        .Cout(Cout)
    );

    // Test code
    initial begin
        // register 초기화
        A = 4'b0000;
        B = 4'b0000;
        mode = 1'b0;

        // addition test
        mode = 1'b0; // Set to Addition mode

        A = 4'b0101; B = 4'b0011; #100; // 5 + 3 = 8

        A = 4'b1010; B = 4'b0110; #100; // 10 + 6 = 16 (carry)

        A = 4'b1111; B = 4'b0001; #100; // 15 + 1 = 16 (overflow)


        // subtraction test
        mode = 1'b1; // set to Subtraction mode

        A = 4'b0101; B = 4'b0011; #100; // 5 - 3 = 2

        A = 4'b0011; B = 4'b0101; #100; // 3 - 5 = -2 (borrow )
        A = 4'b1000; B = 4'b0001; #100; // 8 - 1 = 7


    end


endmodule