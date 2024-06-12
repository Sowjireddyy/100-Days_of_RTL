`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2024 19:43:07
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

class parent_trans;
 int a;
  virtual task send();
    $display("Executing PARENT_TRANS");
  endtask
 
endclass

class error_trans extends parent_trans;
   task send();
    $display("Executing ERROR_Trans");
  endtask
endclass

module top();
error_trans eh;
parent_trans ph;


initial
  begin
   eh =new;
   ph=new;
   eh.send;
   ph.send;
   ph=eh;
   ph.send;
  end
endmodule
