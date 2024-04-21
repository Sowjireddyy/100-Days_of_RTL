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
reg d_in,pre,clr,clk;
 wire d_out;
 

ring_counter_4_bit DUT(d_in,pre,clr,clk,d_out);

initial 
  begin
   clk=0;
  forever #5 clk=~clk;
  end
  
  task initialize;
  begin
  d_in=0;


  end
  endtask
  
  task clear;
  begin
  @(negedge clk)
    clr=1'b1;
  @(negedge clk)
    clr=1'b0;
  end
  endtask
  
  task preset;
  begin
  @(negedge clk)
    pre=1'b1;
  @(negedge clk)
    pre=1'b0;
  end
  endtask
  
  initial
  begin
   initialize;
   clear;
   d_in=1'b0;
   #10;
   d_in=1'b1;
   #10;
   d_in=1'b1;
   #10;
   d_in=1'b0;
   #50;
   clear;
   d_in=1'b1;
   #10;
   d_in=1'b0;
   #10;
   d_in=1'b1;
   #10;
   d_in=1'b0;
   #50;
   preset;
   #60; 
   $finish;
   
   
end
 
endmodule
