`timescale 1ns / 1ps

module tb_ref_clk;

// inputs
reg clk_ref, rst;

// outputs
wire clk_5M;

// UUT
ref_clk UUT (clk_ref, rst, clk_5M);

// testcode
always #4 clk_ref = ~clk_ref;  // 125MHz

initial
begin
    clk_ref = 0;  rst = 1;
    #10           rst = 0;
end

endmodule

