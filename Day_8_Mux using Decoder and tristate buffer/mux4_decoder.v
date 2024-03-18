`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 08:59:30
// Design Name: 
// Module Name: mux4_decoder
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


module mux4_decoder(
    input s1,s0,
    input i3,i2,i1,i0,
    output wor y
    );
    
    wire w1,w2,w3,w4;
    wire p1,p2,p3,p4;
    decoder_4 d_1(.a(s1),.b(s0),.d3(w4),.d2(w3),.d1(w2),.d0(w1));
    bufif1 b_1(y,w4,i3);
    bufif1 b_2(y,w3,i2);
    bufif1 b_3(y,w2,i1);
    bufif1 b_4(y,w1,i0);
    
endmodule
