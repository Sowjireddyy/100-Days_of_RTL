`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2024 19:14:05
// Design Name: 
// Module Name: johnson_counter_tb
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


module johnson_counter_tb( );
reg clk,rst;
wire [0:3]count;

johnson_counter DUT(clk,rst,count);

initial 
 begin
  clk=0;
  forever #5 clk=~clk;
 end
 
 task reset;
 begin
  @(negedge clk)
   rst=1'b1;
  @(negedge clk);
   rst=1'b0;
 end
 endtask
 
 initial
 begin
 reset;
 #100;
 $finish;
 end
 
endmodule
