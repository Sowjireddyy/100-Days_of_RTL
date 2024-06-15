`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 18:48:24
// Design Name: 
// Module Name: top
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
class trans;
rand bit [15:0] a;
  constraint oversize{a <16'hff00;}
endclass

class trans_ext extends trans;
   
  constraint oversize{a >16'hff50;}
endclass

module top();
 trans_ext th;
   
  initial 
    begin
    th=new;
    repeat(10)
     begin
     int sucess;
     sucess =th.randomize;
    // assert(th.randomize);
     $display("a = %0d ",th.a);
      $display("sucess = %0d ",sucess);
     end
    end
endmodule
