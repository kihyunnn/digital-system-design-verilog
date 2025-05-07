`timescale 1ns / 1ps

module tb_homework1;

    reg  [2:0] sw;
    wire [1:0] led;

    homework1 UUT (
        .sw(sw),
        .led(led)
    );

    initial begin
        $display(" A B Cin | Sum Cout ");
        $display("-------------------");

        sw = 3'b000; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b001; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b010; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b011; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b100; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b101; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b110; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);
        sw = 3'b111; #50; $display(" %b %b  %b  |  %b    %b", sw[0], sw[1], sw[2], led[1], led[0]);

        $finish;
    end

endmodule
