`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 08:54:13
// Design Name: 
// Module Name: decoder_4
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


module decoder_4(
    input a,
    input b,
    output d3,d2,d1,d0
    );
    assign d0=~a&~b;
    assign d1=~a&b;
    assign d2=a&~b;
    assign d3=a&b;
endmodule
