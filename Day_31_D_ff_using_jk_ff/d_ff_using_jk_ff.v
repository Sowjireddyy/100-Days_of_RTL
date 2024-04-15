`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 18:04:56
// Design Name: 
// Module Name: d_ff_using_jk_ff
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


module d_ff_using_jk_ff(
    input d,clk,rst,
    output q,q_bar
    );
    wire w1;
    not n_1(w1,d);
    jk_ff d_1(d,w1,clk,rst,q,q_bar);
endmodule
