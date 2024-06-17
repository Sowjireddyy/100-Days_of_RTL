`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2024 22:21:04
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


module test();
int a,b;
bit success;
  initial
    begin
    repeat(10)
     begin
     
     success =std::randomize(a,b) with{a>10;a<20;b<100;b>50;};
     $display("a = %0d,b = %0d",a,b);
   end
   end
   
endmodule
