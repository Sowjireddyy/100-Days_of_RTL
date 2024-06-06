`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.06.2024 09:18:35
// Design Name: 
// Module Name: deep_copy
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
  function sub_class copy();
    copy=new();
    copy.a=this.a;
    copy.b=this.b;
     copy.c=this.c;
  endfunction
endclass:sub_class

class main_class;
  bit [7:0]d;
  sub_class sub_h=new();
   function main_class copy();
    copy=new();
    copy.d=this.d;
    copy.sub_h=this.sub_h.copy();
   endfunction
endclass:main_class


module deep_copy();
  main_class h1,h2;
   initial
     begin
       h1=new();
       h1.sub_h.a=10;
       h1.sub_h.b=29;
       h1.sub_h.c=15;
       h1.d=5;
       $display("H1 =%0P",h1);
       h2=h1.copy;
       h2.d=40;
       h2.sub_h.a=100;
       h2.sub_h.b=300;
       $display("H1 =%0P",h1);
       $display("H2 =%0P",h2);
     end
endmodule


