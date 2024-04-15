`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 18:04:09
// Design Name: 
// Module Name: d_ff_tb
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


module d_ff_tb();
reg d,clk,rst;
wire q,q_bar;

d_ff_using_jk_ff DUT(d,clk,rst,q,q_bar);

initial
  begin
   clk=0;
   forever #5 clk=~clk;
  end
  
  task initialize;
    begin
      d=1'b0;
    end
  endtask
  
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
    initialize;
    reset;
    d=1'b1;
    #10;
    d=1'b1;
    #10;
    d=1'b1;
    #10;
    d=1'b0;
    #10;
    d=1'b0;
    #10;
    d=1'b1;
    #10;
    d=1'b0;
    #10;
    d=1'b1;
    #10;
    $finish;
    end
    
    
endmodule
