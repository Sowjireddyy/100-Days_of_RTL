`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 09:01:57
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb();
reg clk,rst,t_in;
wire q,q_bar;


t_ff DUT(  t_in,rst,clk, q,q_bar);

initial
 begin
  clk=0;
  forever #10 clk=~clk;
 end 
 
 task initialize;
  begin
   {t_in,rst}=0;
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
  
   
   task inputs(input j);
     begin
     @(negedge clk)
       t_in=j;
     end
   endtask
   
   task delay();
    #10;
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
     inputs(1'b1);
     delay;
     
    end 
  initial
   $monitor( " t_in= %b,rst = %b ,clk = %b, q = %b,q_bar = %b", t_in,rst,clk, q,q_bar);
   
 
endmodule
