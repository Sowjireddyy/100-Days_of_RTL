`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 14:50:11
// Design Name: 
// Module Name: segment_tb
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


module segment_tb();
reg a,b,c,d;
wire [6:0]y;

BCD_7segment DUT(a,b,c,d, y);

initial
  begin 
  $monitor("a = %b,b = %b,c = %b, d = %b",a,b,c,d);
    {a,b,c,d}=4'b0000;
    #10;
    {a,b,c,d}=4'b0001;
    #10;
    {a,b,c,d}=4'b0010;
    #10;
    {a,b,c,d}=4'b0011;
    #10;
    {a,b,c,d}=4'b0100;
    #10;
    {a,b,c,d}=4'b0101;
    #10;
    {a,b,c,d}=4'b0110;
    #10;
    {a,b,c,d}=4'b0111;
    #10;
    {a,b,c,d}=4'b1000;
    #10;
    {a,b,c,d}=4'b1001;
    #10;
    $finish;
  end
    
    
    
endmodule
