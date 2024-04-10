`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 18:35:57
// Design Name: 
// Module Name: d_tb
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


module d_tb();
 
 reg d_in,clk,rst;
 wire q,q_bar;
 
 
 d_ff d_1(d_in,clk,rst, q, q_bar);
 
  initial
    begin
      clk=0;
     forever #5 clk=~clk;
   end
   
   task initialize();
    begin
      d_in=1'b0;
      
    end
  endtask     
  
 task reset();
 begin
  @(negedge clk)
    rst=1'b1;
  @(negedge clk)
    rst=1'b0;
  end 
 endtask 
 task inputs(input k);
  begin
  @(negedge clk)
   d_in=k;
  end
 endtask
 task delay();
  begin
   #10;
  end
 endtask
 
 initial 
  begin
   initialize;
   reset;
   inputs(1'b1);
   delay;
   inputs(1'b1);
   delay;
   inputs(1'b1);
   delay;
   inputs(1'b1);
   delay;
   inputs(1'b0);
   delay;
   inputs(1'b0);
   delay;
   inputs(1'b0);
   delay;
   inputs(1'b1);
   delay;
  end
   
   

  
endmodule
