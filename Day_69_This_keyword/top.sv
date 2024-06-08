`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2024 19:06:15
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
   bit[7:0] header, payload,parity;
   function new(input int header);
     this.header=header;
   endfunction
  endclass

  
module top();
initial
  begin 
    trans th_1;
    th_1=new(100);
    $display("trans = %0p",th_1);
    th_1.header=10;
    th_1.payload=200;
    th_1.parity=30;
    $display("trans = %0p",th_1);
  end
  
endmodule
