`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 12:40:37
// Design Name: 
// Module Name: priority_encoder_8_3
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


module priority_encoder_8_3(
    input [7:0] i,
    output [2:0] e,
    output v
    );
    wire [7:0]y;
    priority_check pc_1(i,y,v);
    encoder_8_3    en_1(y,e);
endmodule
