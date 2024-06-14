`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.06.2024 09:30:36
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

class transaction;
  rand bit [3:0] a;
  randc bit [3:0] b;
  function void post_randomize;
      $display("data of a is %0d",a);  
      $display("data of b is %0d",b);
  endfunction  
  endclass
  transaction trans_h=new;
module top();
int d;
initial 
  begin
   d=trans_h.randomize;
   
   $display("d= %0d",d); 
  end
  
endmodule
