`timescale 1ns / 1ps

module ud_counter_4(
    input               clk,
    input               rst,
    input               en,
    input               up,
    input               down,
    output  reg [3:0]   cnt
    );
    
    always @ (posedge clk or posedge rst)
    begin
        if(rst)
            cnt <= 4'b0000;
        else
        begin
            if(en)
            begin
                if(up)
                    cnt <= cnt + 4'b0001;
                else if (down)
                    cnt <= cnt - 4'b0001;
                else
                    cnt <= cnt;
                end
                else
                begin
                    cnt <= 4'd0;
                end
            end
        end
endmodule
