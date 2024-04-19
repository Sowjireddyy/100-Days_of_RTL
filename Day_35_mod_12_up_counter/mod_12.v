`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 22:17:20
// Design Name: 
// Module Name: mod_12
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


module mod_12(
    input [3:0] d_in,
    input clk,rst,load,
    output reg [3:0] c_out
    );
    
    always@(posedge clk)
     begin
      if(rst)
        c_out<=0;
      else if(c_out>=11)
        c_out<=0;
      else if(load)
      begin
        c_out<=d_in;
      
        end
        else
         c_out<=c_out+1;
     end
     
endmodule
