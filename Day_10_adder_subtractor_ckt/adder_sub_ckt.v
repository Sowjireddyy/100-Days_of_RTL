`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 21:28:33
// Design Name: 
// Module Name: adder_sub_ckt
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


module adder_sub_ckt(
    input a0,a1,a2,a3,b0,b1,b2,b3,
    input mode,
    output s0,s1,s2,s3,s4
    );
    
    wire w1,w2,w3,w4,w5,w6,w7;
    xor x1(w1,mode,b0);
    xor x2(w2,mode,b1);
    xor x3(w3,mode,b2);
    xor x4(w4,mode,b3);
    
    full_adder fa_1(a0,w1,mode,s0,w5);
    full_adder fa_2(a1,w2,w5,s1,w6);
    full_adder fa_3(a2,w3,w6,s2,w7);
    full_adder fa_4(a3,w4,w7,s3,s4);
endmodule
