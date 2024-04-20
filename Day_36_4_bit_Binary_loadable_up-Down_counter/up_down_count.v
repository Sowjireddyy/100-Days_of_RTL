`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 09:44:02
// Design Name: 
// Module Name: up_down_count
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


module up_down_count(
    input [3:0] d_in,
    input clk,rst,load,mode,
    output reg [3:0] c_out
    );
    
    always@(posedge clk)
      begin
        if(rst)
           c_out=4'b0000;
        else if(load)
          c_out=d_in;
        else if(mode)
           c_out=c_out+1;
        else
          c_out=c_out-1;
      end
endmodule
