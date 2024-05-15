`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2024 21:41:23
// Design Name: 
// Module Name: either_edge_detector
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


module either_edge_detector(input clk,d,rst,
                              output detector);
         wire w1;
         d_ff d1(clk,rst,d,w1);
          xor x1(detector,d,w1);                    
endmodule
