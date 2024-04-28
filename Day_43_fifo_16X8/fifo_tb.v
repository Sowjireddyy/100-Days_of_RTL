`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2024 23:50:40
// Design Name: 
// Module Name: fifo_tb
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


module fifo_tb();
reg clk,rst,re,we;
 reg   [7:0] d_in;
  wire empty,full;
wire [7:0] d_out;
integer i;
fifo DUT(clk,rst,re,we, d_in, empty,full,d_out);
initial
begin
clk=1'b0;
forever #5 clk=~clk;;
end

task initialize;
begin
re=0;
we=0;
d_in=8'b0;
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

/* task inputs(input [7:0]a);
begin
 d_in=a;
 end
 endtask   */
 
 task write_enable;
 begin
  @(negedge clk)
  we=1'b1;
  for(i=0; i<16; i=i+1)
  begin 
   d_in={$random}%80;
   #10;
   end
  @(negedge clk)
  we=1'b0;
  end
  endtask
   
   task read_enable;
 begin
  @(negedge clk)
  re=1'b1;
  #200;
  @(negedge clk)
  re=1'b0;
  end
  endtask
  
  
  
  initial
  begin
   initialize;
   reset;
   
   write_enable;
   #10;
   read_enable;
   #10;
   $finish;
   end 
   


endmodule
