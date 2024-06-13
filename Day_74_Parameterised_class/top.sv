`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.06.2024 22:23:42
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

class c#(type T=bit);
  T a;
endclass

class D1 #(type P=real) extends c#(integer);
  P b;
endclass

class D2#(type P=real) extends c#(P);
  P b;
endclass

class D3 #(type P =real) extends c#(P);
  P b;
endclass

class D4 #(type P= c#(real)) extends P;
   P b;
endclass

D1 d1;
D2 d2;
D3 d3;
D4 d4;

module top();

initial
  begin
  
    $display("p.a=%s\t c.b = %s",$typename(d1.a),$typename(d1.b));
    $display("p.a=%s\t c.b = %s",$typename(d2.a),$typename(d2.b));
    $display("p.a=%s\t c.b = %s",$typename(d3.a),$typename(d3.b));
    $display("p.a=%s\t c.b = %s",$typename(d4.a),$typename(d4.b));
 end
 
 endmodule
