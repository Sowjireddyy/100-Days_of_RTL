`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2024 19:52:28
// Design Name: 
// Module Name: multiplier
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

module multiplier(a,b,product);
input [3:0] a,b;
output [7:0] product;
 wire [3:0] s0;
 wire [4:0] s1;
 wire [5:0] s2;
 wire [6:0] s3;
 
 
 wire [7:0] k1,k2,k3;
 
 assign s0={4{a[0]}}&b[3:0];
 assign s1={4{a[1]}}&b[3:0];
 assign s2={4{a[2]}}&b[3:0];
 assign s3={4{a[3]}}&b[3:0];
 
 assign k1= s0+(s1<<1);
 assign k2= k1+(s2<<1);
 assign k3= k2+(s3<<1);
 assign product=s3;
 endmodule
 
