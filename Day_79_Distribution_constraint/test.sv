`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.06.2024 09:13:17
// Design Name: 
// Module Name: test
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
 rand int a;
 bit [3:0] b;
 constraint range{a dist{7:=5,[3:6]:=3, [15:20]:/10};}
 endclass
 
module test();
trans th_1;
int success;
initial
  begin
   th_1=new;
   repeat(10)
   begin
   success=th_1.randomize();
   $display("range is %0d ",th_1.a);
   $display("success is %0d",success);
  end
  end
endmodule
