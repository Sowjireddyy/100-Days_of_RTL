`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 13:18:25
// Design Name: 
// Module Name: ring_counter_tb
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



 
  
  module ring_counter_tb();
reg rst,clk;
 wire [3:0]count;
 

ring_counter_4_bit DUT(rst,clk,count);

initial 
  begin
   clk=0;
  forever #5 clk=~clk;
  end
 
  
  task reset;
  begin
  @(negedge clk)
    rst=1'b1;
  @(negedge clk)
    rst=1'b0;
  end
  endtask
  
 
  
  initial
  begin
   reset;
   #90; 
   $finish;
   
   
end
 
endmodule
