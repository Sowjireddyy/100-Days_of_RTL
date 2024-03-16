`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 18:59:47
// Design Name: 
// Module Name: 4_bit_ripple_carry_adder
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


module ripple_carry_adder_4_bit(
    input [3:0] a,
    input [3:0] b,
    input  cin,
    output [3:0] sum,
    output  cout
    );
    wire w1,w2,w3;
      
      
    full_adder fa_0(.a(a[0]),.b(b[0]),.c(cin),.sum(sum[0]),.carry(w1));  
    full_adder fa_1(.a(a[1]),.b(b[1]),.c(w1),.sum(sum[1]),.carry(w2)); 
    full_adder fa_2(.a(a[2]),.b(b[2]),.c(w2),.sum(sum[2]),.carry(w3)); 
    full_adder fa_3(.a(a[3]),.b(b[3]),.c(w3),.sum(sum[3]),.carry(cout)); 
endmodule
