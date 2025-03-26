//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/19 09:09:23
// Design Name: 
// Module Name: tb_ha_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for half adder
// 
// Dependencies: ha_1 module
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/1ps  // Time unit = 1ns, precision = 1ps

module tb_ha_1;  // Half adder testbench

  // Inputs
  reg a, b;  // Input bits

  // Outputs
  wire sum, cout;  // Sum and carry outputs

  // Connect the half adder module
  ha_1 UUT (
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
  );


  // Test all input combinations
  initial begin
    // Case 1: 0 + 0
    a = 0; b = 0;
    #100; // Wait for 100 time units
    
    // Case 2: 0 + 1
    a = 0; b = 1;
    #100;
    
    // Case 3: 1 + 0
    a = 1; b = 0;
    #100;
    
    // Case 4: 1 + 1
    a = 1; b = 1;
    #100;


    $finish;
  end

endmodule
