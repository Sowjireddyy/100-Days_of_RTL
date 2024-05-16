`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 20:45:41
// Design Name: 
// Module Name: mealy_fsm_tb
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


 module mealy_fsm_tb;

 reg clk;
 reg reset;
 reg data_in;
 wire detected;

 // Instantiate the Mealy machine module
mealy_fsm DUT (clk,reset,data_in,detected);
   
// Clock generation
 always #5 clk = ~clk;

// Stimulus generation
 initial begin
    clk = 0;
    reset = 1;
    data_in = 0;
    #10 reset = 0;

    // Test sequence: 1010
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 0;
    #10 data_in = 1;
    #20;
     $finish;
 end

 endmodule
 
 
