`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 12:09:20
// Design Name: 
// Module Name: siso_tb
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


module siso_tb();
reg si,clk,rst;
wire s0;

siso  DUT(si,clk,rst,s0);

initial 
  begin
   clk=0;
   forever #5 clk=~clk;
  end
   
  task initialize;
   begin
      si=1'b0;
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
     si=k;
   end
  endtask
  
  initial
    begin
     initialize;
     reset;
     repeat(3)
     inputs(1'b1);
     repeat(2)
     inputs(1'b0);
      repeat(3)
     inputs(1'b1);
     repeat(2)
     inputs(1'b0);
  
  end     
    
    
endmodule
