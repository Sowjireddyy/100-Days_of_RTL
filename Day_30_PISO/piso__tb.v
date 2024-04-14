`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.03.2024 10:24:55
// Design Name: 
// Module Name: piso__tb
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


module piso__tb();
reg [3:0] load;
reg rst,clk,shift;
wire s;

piso DUT(clk,rst,load,shift,s);

initial 
begin
 clk=0;
 forever #5 clk=~clk;
 end
 
 task initialize ;
 begin
  load=0;
  shift=0;
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
  
  task inputs(input [3:0] a);
  begin
  @(negedge clk)
   load=a;
   end
  endtask
  
  initial
  begin 
  initialize;
  reset;
  
  inputs(4'b1100);
  shift=1'b0;
  #10;
  shift=1'b1;
  #50;
  
  inputs(4'b0110);
  shift=1'b0;
  #10;
  shift=1'b1;
  #50;
  
  inputs(4'b1111);
  shift=1'b0;
  #10;
  shift=1'b1;
  #50;
  
 
  $finish;
  end
  
  
endmodule
