`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2024 18:35:26
// Design Name: 
// Module Name: gray_to_binary_tb
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


module gray_to_binary_tb();
reg [3:0] g;
wire [3:0] b;

gray_to_binary DUT( g, b);
initial 
   begin
   $monitor("g = %b, b = %b",g,b);
    g=4'b0000;
    #5;
    g=4'b0011;
    #5;
    g=4'b0110;
    #5;
    g=4'b1110;
    #5;
    g=4'b0111;
    #5;
    g=4'b1100;
    #5;
    g=4'b0101;
    #5;
    g=4'b1001;
    #5;
    g=4'b1101;
    #5;
    $finish;
  end
    
    
    
endmodule
