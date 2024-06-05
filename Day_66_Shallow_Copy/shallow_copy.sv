`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2024 21:26:30
// Design Name: 
// Module Name: shallow_copy
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

class sub_class;
  int a,b;
  shortint c;
endclass:sub_class

class main_class;
  bit [7:0]d;
  sub_class sub_h=new();
endclass:main_class


module shallow_copy();
  main_class h1,h2;
   initial
     begin
       h1=new();
       h1.sub_h.a=10;
       h1.sub_h.b=29;
       h1.sub_h.c=15;
       h1.d=5;
       $display("H1 =%0P",h1);
       h2=new h1;
       h2.sub_h.a=100;
       h2.sub_h.b=300;
       $display("H1 =%0P",h1);
       $display("H2 =%0P",h2);
     end
endmodule
