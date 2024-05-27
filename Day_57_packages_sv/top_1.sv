`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2024 19:42:17
// Design Name: 
// Module Name: top_1
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

package pkg;
int no_of_trans;
function void display(string s);
  $display($time ,"  string = %0s,  n= %0d",s,no_of_trans);
endfunction

endpackage

module top_1();
import pkg::*;

initial 
   begin
     #1;
      no_of_trans=10;
      #1;
      display("kom");
      #1;
       no_of_trans=29;
       #1;
      display("sow");
      #1;
     $finish;
   end
 
endmodule
