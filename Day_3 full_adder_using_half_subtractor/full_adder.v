`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 10:23:35
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a,
    input b,
    input c,
    output sum,
    output carry
    );
    wire w1,w2,w3,w4;
    
    not n_1(w1,a);
    half_sub  h_1(.a(w1),
                    .b(b),
                    .diff(w2),
                    .borr(w3));
   
    half_sub  h_2(.a(w2),
                   .b(c),
                   .diff(w4),
                   .borr(w5));
    not n_2(sum,w4);
    or o_1(carry,w3,w5);
   
endmodule
