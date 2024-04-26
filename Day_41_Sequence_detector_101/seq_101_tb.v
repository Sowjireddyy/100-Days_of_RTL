`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 08:41:09
// Design Name: 
// Module Name: seq_101_tb
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


module seq_101_tb();
reg clk,rst,in;
 wire out;
 seq_101 DUT(clk,rst,in,out);
 initial
 begin
  clk=0;
  forever #5 clk=~clk;
  end
   
   task initialize;
   begin
     in=0;
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
    in=1'b1;
    #10;
    in=1'b0;
    #10;
    in=1'b1;
    #10;
    in=1'b0;
    #10;
    in=1'b1;
    #10;
    in=1'b1;
    #10;
    end
     
endmodule
