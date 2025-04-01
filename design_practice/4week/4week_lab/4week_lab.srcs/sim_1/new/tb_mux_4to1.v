`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 22:13:07
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1;

    reg a,b,c,d;
    reg [1:0] sel;


    wire out;

    mux_4to1 UUT (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Initialize Inputs
        a = 0;
        b = 0;
        c = 0;
        d = 0;

        #100;
        sel = 2'b11;
        a = 0; b = 0; c = 0; d = 1; 
        #100;
        sel = 2'b10;
        a = 0; b = 0; c = 1; d = 0; 
        #100;
        sel = 2'b01;
        a = 0; b = 0; c = 1; d = 0; 
        #100;
        sel = 2'b00;
        a = 0; b = 1; c = 1; d = 1;
        #100;
        $finish;

    end

endmodule
