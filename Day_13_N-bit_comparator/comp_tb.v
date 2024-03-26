`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2024 11:22:37
// Design Name: 
// Module Name: comp_tb
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


module comp_tb();
parameter n=32;
reg [n-1:0] a,b;
wire L,G,E;


comp_N_bit DUT(a,b,L,G,E);

initial
begin
 a=0;b=0;
 #20 a=20; b=30;
 #20 a=220; b=330;
 #20 a=2044; b=430;
 #20 a=2220; b=4430;
 #20 a=2560; b=33450;
 #20 a=2230; b=47530;
 
 end
 initial
 $monitor("A=%b,B=%b,L=%b,G=%b,E=%b",a,b,L,G,E);
endmodule
