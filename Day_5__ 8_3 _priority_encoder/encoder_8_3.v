`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 12:39:35
// Design Name: 
// Module Name: encoder_8_3
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


module encoder_8_3(
    input [7:0] a,
    output [2:0] e
    );
    assign e[0]=a[1]|a[3]|a[5]|a[7];
    assign e[1]=a[2]|a[3]|a[6]|a[7];
    assign e[2]=a[4]|a[5]|a[6]|a[7];
    
    
endmodule
