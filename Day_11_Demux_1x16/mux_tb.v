`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2024 09:48:53
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
 reg a;
   reg s0,s1,s2,s3;
    wire  [15:0] y;
    integer i;
    mux DUT( a,s0,s1,s2,s3,y);
    
    initial 
    begin
    for(i=0; i<64; i=i+1)
    begin
     {a,s0,s1,s2,s3}=i;
     #10;
     end
     end
     
     
endmodule
