`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.03.2024 18:56:22
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb();
reg a,b;
wire diff,bor;
integer i;
half_sub ha(a,b, diff, bor);
initial
begin 
{a,b}=2'b00;
end
initial
begin 
for(i=0;i<4;i=i+1)
begin
{a,b}=i;
#10;
end
end
initial
$monitor("a = %b,b = %b,diff = %b,bor = %b",a,b,diff,bor);
endmodule
