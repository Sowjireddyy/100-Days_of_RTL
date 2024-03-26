`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 15:58:30
// Design Name: 
// Module Name: copm_1
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


module copm_1(
    input a,
    input b,
    output yeq,yle,ygt
    );
    assign yeq=a==b;
    assign yle=a<b;
    assign ygt=a>b;
endmodule
