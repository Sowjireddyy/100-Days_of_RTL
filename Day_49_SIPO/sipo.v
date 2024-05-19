`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 19:45:46
// Design Name: 
// Module Name: sipo
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


module sipo(input clk,rst,si,output reg [3:0]po);

 reg [3:0]temp;
 
  always@(posedge clk)
  begin
    if(rst)
     po = 4'b0000;
    else 
     begin
      temp = {si,temp[3:1]};
      po = temp;
	 end 
  end
 endmodule
 
 
