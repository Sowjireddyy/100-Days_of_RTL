`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 11:32:17
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb();

reg i1,control;
wire q;
d_latch_using_mux DUT(.i1(i1),.s(control), .y(q));

 initial
   begin
   $monitor("i1 = %b, control = %b, q = %b",i1,control,q);
    control=1'b0;i1=1'b0;
  end
  
  always #5 control=~control;
  always #10 i1=~i1;
  
  
    
   
endmodule
