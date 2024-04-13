`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 12:08:57
// Design Name: 
// Module Name: siso
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


module siso(
    input si,clk,rst,
    output reg s0
    );
   reg [3:0] temp;
   
    
    always @ (posedge clk)
      begin
        if(rst)
        temp<=4'b0000;
        else
          temp<={si,temp[3:1]};
         s0<=temp[0];
      end
          
endmodule
