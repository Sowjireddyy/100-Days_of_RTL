`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.03.2024 10:37:21
// Design Name: 
// Module Name: full_tb
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


module full_tb();
reg a,b,c;
wire sum,carry;
integer i;
full_adder fa_1(a,b,c,sum,carry);
initial 
{a,b,c}=3'b000;

initial
begin
for(i=0; i<8; i=i+1)
begin
  {a,b,c}=i;
#10;
end
end
initial
begin
$monitor("a=%b,b=%b,c=%b,sum=%b,carry=%b",a,b,c,sum,carry);
 #80 $finish;
end
endmodule
