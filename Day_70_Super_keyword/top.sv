`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2024 10:40:32
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

class account;
 int balance;
 string kom;
 function new(int pay);
 balance=pay;
 endfunction
 
 endclass
 
 class linked_account extends account;
  int b;
  function new(int value);
    super.new(value);
  endfunction
 endclass

module top();
linked_account h_1;
initial
  begin
    h_1=new(1000);
    h_1.kom="sow";
    h_1.b=200;
    $display("%0p",h_1);
  end
endmodule
