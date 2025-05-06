`timescale 1ns / 1ps

module tb_full_adder;

    reg a, b, cin;

    wire sum, cout;

    full_adder UUT (a, b, cin, sum, cout);

    initial begin
                a = 0; b = 0; cin = 0; 
        #50;    a = 0; b = 0; cin = 1; 
        #50;    a = 0; b = 1; cin = 0; 
        #50;    a = 0; b = 1; cin = 1; 
        #50;    a = 1; b = 0; cin = 0; 
        #50;    a = 1; b = 0; cin = 1; 
        #50;    a = 1; b = 1; cin = 0; 
        #50;    a = 1; b = 1; cin = 1;
        #50; 
        $finish;
    end

endmodule
