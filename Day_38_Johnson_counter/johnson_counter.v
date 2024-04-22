`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2024 19:13:14
// Design Name: 
// Module Name: johnson_counter
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


module johnson_counter(
    input clk,rst,
    output reg [0:3] count
    );
   
   always@(posedge clk)
    begin
     if(rst)
      count<=4'b0001;
      else
       count<={~count[3],count[0:2]};
    end
     
    
endmodule
