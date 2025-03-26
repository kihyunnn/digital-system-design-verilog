`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/25 23:13:09
// Design Name: 
// Module Name: tb_rca_16
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

module tb_rca_16;
    // input
    reg [15:0] x;
    reg [15:0] y;
    reg cin;
    
    // output
    wire [15:0] sum;
    wire cout;
    
    // UUT
    rca_16 uut ( 
        .x(x),
        .y(y),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    initial begin
	// Initial value setting
		x = 16'h0000; y = 16'h0000; cin = 0;

	// Test Case 1 : 3+5 , cin = 0
		x = 16'h0003; y = 16'h0005; cin = 0; #100;

	// Test Case 2 : 65335 + 1 , cin = 0

		x = 16'hFFFF; y = 16'h0001; cin = 0; #100;

	// Test Case 3 : 65535 + 65535 , cin = 1

		x = 16'hFFFF; y = 16'hFFFF; cin = 1; #100;

	// Test Case 4 : 10 + 20 , cin = 1

		x = 16'h000A; y = 16'h0014; cin = 1; #100;


	end
    

    
endmodule
