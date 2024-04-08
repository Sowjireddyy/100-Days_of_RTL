`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 17:05:14
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(
    input s,r,c,
    output q,q_bar
    );
    
     wire w1,w2;
     
    nand a_1(w1,c,s);
    nand a_2(w2,c,r);
    nand a_3(q,w1,q_bar);
    nand a_4(q_bar,w2,q);
    
endmodule
