`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2024 18:33:00
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary(
    input [3:0] g,
    output [3:0] b
    );
    
    assign b[3]=g[3];
    assign b[2]=g[2]^b[3];
    assign b[1]=g[1]^b[2];
    assign b[0]=g[0]^b[1]; 
endmodule
