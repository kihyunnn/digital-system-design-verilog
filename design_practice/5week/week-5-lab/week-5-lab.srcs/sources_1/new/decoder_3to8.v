`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/06 23:39:20
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8( 
    input [2:0] in,
    input en,
    output reg [7:0] out
    );

    always @(*) 
    begin
        if(!en)
        begin
            out = 8'h0; 
        end
        else
        begin
            case(in)
                3'd0 : out = 8'h01;
                3'd1 : out = 8'h02;
                3'd2 : out = 8'h04;
                3'd3 : out = 8'h08;
                3'd4 : out = 8'h10;
                3'd5 : out = 8'h20;
                3'd6 : out = 8'h40;
                3'd7 : out = 8'h80;
            endcase
        end
    end
endmodule
