`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.04.2024 11:16:15
// Design Name: 
// Module Name: d_latch_using_mux
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


module d_latch_using_mux(
    input  i1,i0,
    input s,
    output reg y
    );
   always@(i0,i1,s)
      begin
        if(s)
         y=i1;
        
      end 
     
endmodule
