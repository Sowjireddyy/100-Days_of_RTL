`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 13:17:49
// Design Name: 
// Module Name: ring_counter_4_bit
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


module ring_counter_4_bit(
    input rst,clk,
    output reg [0:3] count
    );
    
    
    always@(posedge clk)
    begin
     if(rst)
      count<=4'b0001;
    else 
      count<={count[3],count[0:2]};
   end
  
      
endmodule


