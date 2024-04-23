`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 15:05:11
// Design Name: 
// Module Name: mem_tb
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


module mem_tb();
reg [7:0] d_in;
reg [3:0] wr_addr,re_addr;
reg clk,rst,wr,re;
wire [7:0] d_out;


 
ram  DUT(d_in, wr_addr,re_addr, clk,rst,re,wr, d_out);

initial
 begin
  clk=0;
  forever #5 clk=~clk;
 end
 
 task initialize;
  begin
   d_in=8'b0;
   {wr_addr,re_addr}=8'b0;
   {clk,rst,wr,re}=4'b0;
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
  
  task write(input [7:0] a,input [3:0] b,input c);
   begin
    @(negedge clk)
      d_in=a;
      wr_addr=b;
      wr=c;
 
   end
  endtask
  
  task read(input [3:0] m,input n);
   begin
    @(negedge clk)
    re_addr=m;
    re=n;
   
   end
  endtask
  
  initial
    begin
     initialize;
     reset;
     write($random,4'b1011,1'b1);
     #10;
     wr=1'b0;
     read(4'b1011,1'b1);
     #10;
     write($random,4'b1001,1'b1);
     #10;
     wr=1'b0;
     read(4'b1001,1'b1);
     #10;
     write($random,4'b1010,1'b1);
     #10;
     wr=1'b0;
     read(4'b1010,1'b1);
     #10;
     write($random,4'b0011,1'b1);
     #10;
     wr=1'b0;
     read(4'b0011,1'b1);
     #10;
    end
    
endmodule
