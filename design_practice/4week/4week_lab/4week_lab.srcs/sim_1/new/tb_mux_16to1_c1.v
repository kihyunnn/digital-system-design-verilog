`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/04/01 22:43:46
// Design Name: 
// Module Name: tb_mux_16to1_c1
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


module tb_mux_16to1_c1;
    reg [15:0] in;
    reg [3:0] sel;
    wire out;
    
    mux_16to1_c1 UUT(
        .in(in),
        .sel(sel),
        .out(out)
    );
    


    initial begin
        // 초기화
        in = 16'h0000;
        sel = 4'b0000;
        #100; // 초기화 상태를 잠시 유지
        in = 16'hA5A5;  // 이 입력 값으로 고정
        sel = 4'b0000;  // 입력 0 선택 (in[0]=1). out = 1
        #100;
        
        sel = 4'b0001;  // 입력 1 선택 (in[1]=0).  out = 0
        #100;

        sel = 4'b0010;  // 입력 2 선택 (in[2]=1).  out = 1
        #100;

        sel = 4'b0011;  // 입력 3 선택 (in[3]=0).  out = 0
        #100;

        sel = 4'b0100;  // 입력 4 선택 (in[4]=0).  out = 0
        #100;

        sel = 4'b0101;  // 입력 5 선택 (in[5]=1). out = 1
        #100;
        
        $finish;

        
    end

    initial begin
        $monitor("Time=%0t, in=%h, sel=%b, out=%b", $time, in, sel, out);
    end


endmodule
