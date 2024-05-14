`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 21:43:21
// Design Name: 
// Module Name: fall_edge_detector
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


module fall_edge_detector(input clk,rst,D, output Detector);
   wire Q;
  
   and A1(Detector,Q,~D);
  
  ////Instantiation
  d_ff d_ff1(D,clk,rst,Q);
  
 endmodule  

