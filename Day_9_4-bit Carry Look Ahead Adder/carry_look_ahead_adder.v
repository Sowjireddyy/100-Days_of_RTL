`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 18:58:27
// Design Name: 
// Module Name: carry_look_ahead_adder
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


module carry_look_ahead_adder(
    input a0,a1,a2,a3,
    input b0,b1,b2,b3,
    output s0,s1,s2,s3,
    output c_out
    );
    
    wire w1,w2,w3,c1,c2,c3,c4,c5,c6;
    half_adder ha_1(a0,b0,s0,c1);
    half_adder ha_2(a1,b1,w1,c2);
    half_adder ha_3(a2,b2,w2,c3);
    half_adder ha_4(a3,b3,w3,c_out);
    
    full_adder fa_1(a1,b1,c1,s1,c4);
    full_adder fa_2(a2,b2,c2,s2,c5);
    full_adder fa_3(a3,b3,c3,s3,c6);
    
    
endmodule
