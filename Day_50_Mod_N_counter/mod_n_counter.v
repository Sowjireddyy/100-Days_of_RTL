`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 19:27:50
// Design Name: 
// Module Name: mod_n_counter
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


module mod_n_counter(input clk,rst,output Q); 
 
 parameter N = 2;   ///number of bits in counter
 parameter upto = 3; 
 reg [N-1:0]Q;
 reg [N-1:0]counter;
  
 always@(posedge clk)
  begin
   if(rst)
     counter <= 0;
   else
      counter <= (counter+1) % upto;
       Q <= counter ;
   end   
endmodule  


