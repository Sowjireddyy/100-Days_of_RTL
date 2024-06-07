`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 08:32:14
// Design Name: 
// Module Name: inheritance_top
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

class base;
  int balance=0;
  string kom;
  function int summary;
     return balance;
  endfunction
endclass

class extended_class extends base;
  int bal;
  function int total;
    return balance+bal;
  endfunction
endclass

module inheritance_top();
  extended_class h1;
  initial 
    begin
      h1=new();
      h1.balance=1000;
      h1.bal=200;
      h1.kom="sow";
     
      $display("extended_class =%0p",h1);
    end
endmodule
