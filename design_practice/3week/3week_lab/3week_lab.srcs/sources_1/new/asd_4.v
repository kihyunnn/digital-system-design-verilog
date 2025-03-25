`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/26 02:34:18
// Design Name: 
// Module Name: asd_4
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



module asd_4(// 4-bit Adder-Subtractor Module
    input [3:0] A,        
    input [3:0] B,          
    input mode,              //Mode Select (0: Add, 1: Subtract)
    output [3:0] Sum,       
    output Cout            
    );

    
    wire [3:0] b_comple; // complement of B
    wire [3:0] B_in;         //  Wire for B input to Full Adder
    wire c0, c1, c2;        

    // complement of B
    assign b_comple = ~B; 

    // Select B_in based on mode
    assign B_in[0] = mode ? b_comple[0] : B[0]; 
    assign B_in[1] = mode ? b_comple[1] : B[1];
    assign B_in[2] = mode ? b_comple[2] : B[2];
    assign B_in[3] = mode ? b_comple[3] : B[3];

    // Connect 4-bit Full Adders (Ripple Carry method)
    fa_1 FA0 ( // using fa_1 module
        .a(A[0]),
        .b(B_in[0]),
        .cin(mode),      // mode is used as initial carry-in,because it is 0 for addition and 1 for subtraction
        .sum(Sum[0]),
        .cout(c0)
    );

    fa_1 FA1 (
        .a(A[1]),
        .b(B_in[1]),
        .cin(c0),    
        .sum(Sum[1]),
        .cout(c1)
    );

    fa_1 FA2 ( 
        .a(A[2]),
        .b(B_in[2]),
        .cin(c1),    
        .sum(Sum[2]),
        .cout(c2)
    );

    fa_1 FA3 ( 
        .a(A[3]),
        .b(B_in[3]),
        .cin(c2),     
        .sum(Sum[3]),
        .cout(Cout)    // final carry-out
    );
endmodule
