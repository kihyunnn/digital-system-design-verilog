`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 09:06:57
// Design Name: 
// Module Name: ha_1
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


module ha_1(
    input a,
    input b,
    output sum,
    output cout

    );
    
    assign sum =  a ^ b ;
    assign cout = a & b;
    
endmodule
