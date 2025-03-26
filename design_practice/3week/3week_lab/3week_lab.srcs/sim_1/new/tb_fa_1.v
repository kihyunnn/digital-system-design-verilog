
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 22:32:00
// Design Name: 
// Module Name: tb_fa_1
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
`timescale 1ns / 1ps

module tb_fa_1;
    // Inputs
    reg a, b, cin;

    // Outputs
    wire sum, cout;

    // Instantiate the Unit Under Test (UUT)
    fa_1 uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        // Initialize Inputs
        a = 0; b = 0; cin = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
        
        // Add stimulus here
        a = 0; b = 0; cin = 0; #100;
        a = 0; b = 1; cin = 0; #100;
        a = 1; b = 0; cin = 0; #100;
        a = 1; b = 1; cin = 0; #100;
        a = 0; b = 0; cin = 1; #100;
        a = 0; b = 1; cin = 1; #100;
        a = 1; b = 0; cin = 1; #100;
        a = 1; b = 1; cin = 1; #100;

    end

    
endmodule
