`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/30 03:31:00
// Design Name: 
// Module Name: booth_selector_logic
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
module booth_selector_logic #(parameter N = 8)(
    input  signed [N-1:0] multiplicand,
    input  single,
    input  double,
    input  neg,
    output reg signed [N:0] partial_product
);
    reg signed [N:0] temp;

    always @(*) begin
        if (single)
            temp = {multiplicand[N-1], multiplicand};  // 부호 확장
        else if (double)
            temp = ({multiplicand[N-1], multiplicand}) << 1;
        else
            temp = {(N+1){1'b0}};

        if (neg)
            partial_product = -temp;
        else
            partial_product = temp;
    end
endmodule