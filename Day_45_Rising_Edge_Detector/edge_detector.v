`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 21:06:23
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(input clk,rst,D, output Detector);
   wire Q;
  
   and A1(Detector,~Q,D);
  
  ////Instantiation
 d_ff d_ff1(D,clk,rst,Q);
  
 endmodule  

