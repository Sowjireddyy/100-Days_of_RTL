`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 15:53:11
// Design Name: 
// Module Name: carry_select_adder
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


module carry_select_adder(
    input [3:0] a,b,
    input c_in,
    output c_out,
    output [3:0] s
    );
    wire [3:0]x,z;
    wire w,y;
    adder_4bit a_1(a,b,1'b0,w,x);
    adder_4bit a_2(a,b,1'b1,y,z);
    mux_2X1    m_1(w,y,c_in,c_out);
    mux_2X1    m_2(x[0],z[0],c_in,s[0]);
    mux_2X1    m_3(x[1],z[1],c_in,s[1]);
    mux_2X1    m_4(x[2],z[2],c_in,s[2]);
    mux_2X1    m_5(x[3],z[3],c_in,s[3]);
    
endmodule
