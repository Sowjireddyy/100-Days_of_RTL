`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 19:50:19
// Design Name: 
// Module Name: top
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


module top();
typedef struct {int a; bit b;string c; logic d;} kom;

kom sow;
initial begin

sow.a=10;
sow.b=1'b0;
sow.c="sowji";
sow.d=1'b1;

$display("%0p",sow);
end
endmodule
