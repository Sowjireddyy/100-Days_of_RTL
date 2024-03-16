`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.03.2024 19:25:12
// Design Name: 
// Module Name: adder_4_bit_tb
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


module adder_4_bit_tb();
reg [3:0]a, b; reg cin;
    wire [3:0]sum;wire cout;
    integer i;
     ripple_carry_adder_4_bit  adder_1(a,b,cin,sum,cout);
     initial
     begin
     {a,b}=8'b00000000;
     cin=0;
     end
     initial
     begin
     for(i=0; i<256; i=i+1)
     begin
     {a,b}=i;
     #5;
     end
   
     end
     initial
     $monitor("a=%b,b=%b,cin=%b,sum=%b,cout=%b",a,b,cin,sum,cout);
endmodule
