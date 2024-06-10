`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.06.2024 09:37:15
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

class parent;
  int a;
  
  function new(input int a);
   this.a=a;
  endfunction
  
endclass

class child extends parent(7);
  int b;
  endclass
  
  

module top();
child ch_1;
  initial begin
     ch_1=new();
     ch_1.b=100;
    $display("ch_1 = %0p",ch_1);
  end 
endmodule
