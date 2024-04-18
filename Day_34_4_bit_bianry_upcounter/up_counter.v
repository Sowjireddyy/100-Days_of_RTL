`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 20:29:51
// Design Name: 
// Module Name: up_counter
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


module up_counter(
    input [3:0]d_in,
    input clk,rst,load,
    output reg [3:0]c_out
    );
    
    always@(posedge clk)
      begin
        if(rst)
          c_out<=4'b0000;
        else if(load)
        begin
            c_out<=d_in;
           
        end
         else
           c_out=c_out+1;
          
      end
      
endmodule
