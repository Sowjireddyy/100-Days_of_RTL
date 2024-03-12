`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 19:16:13
// Design Name: 
// Module Name: full_sub
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


module full_sub(
    input a,
    input b,
    input c,
    output diff,
    output bor
    );
    half_sub hs_1(.a(a),.b(b),.diff(w1),.bor(w2));
    half_sub hs_2(.a(w1),.b(c),.diff(diff),.bor(w3));
    or or_1(bor,w2,w3);
endmodule
