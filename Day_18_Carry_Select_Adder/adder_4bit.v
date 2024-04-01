`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:56:25
// Design Name: 
// Module Name: adder_4bit
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


module adder_4bit(
    input [3:0] a,b,
    input c_in,
    output c_out,
    output [3:0] s
    );
    wire w1,w2,w3;
    full_adder fa_1(a[0],b[0],c_in,s[0],w1);
    full_adder fa_2(a[1],b[1],w1,s[1],w2);
    full_adder fa_3(a[2],b[2],w2,s[2],w3);
    full_adder fa_4(a[3],b[3],w3,s[3],c_out);
endmodule
