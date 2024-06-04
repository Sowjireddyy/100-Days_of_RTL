`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2024 09:21:14
// Design Name: 
// Module Name: module_top
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
  bit [31:0] src,dst;
  function new();
     src=5;
     dst=10;
  endfunction
  endclass 
  
module module_top();

transaction trans_h;
initial
  begin
    trans_h=new();
    $display("src = %0d ",trans_h.src);
    $display("dst = %0d ",trans_h.dst);
  end

endmodule
