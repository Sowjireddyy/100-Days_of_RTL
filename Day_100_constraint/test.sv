`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 12:05:31
// Design Name: 
// Module Name: test
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
rand bit[15:0] a;

constraint  c1{foreach(a[i])
               if(a[i]==1&&i<15)
                 a[i+1]==1;}
 
endclass
module test();

trans th1;

initial
  begin
   th1=new;
   assert(th1.randomize);
   $display("%0b",th1.a);
 end
 
endmodule
