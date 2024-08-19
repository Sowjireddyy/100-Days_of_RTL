`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.08.2024 10:19:34
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

rand int a[];
constraint c1{a.size==8;}
constraint c2{foreach(a[i])
              a[i]==i*10+9;
              }

endclass

module test();
trans th1;
initial
 begin
  th1=new;
  void'(th1.randomize);
  $display("%0p",th1.a);
 end
endmodule
