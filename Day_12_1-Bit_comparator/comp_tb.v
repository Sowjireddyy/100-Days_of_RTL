`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:01:13
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
reg a,b;
integer i;
copm_1  c_1(a,b,yeq,yle,ygt);
initial
begin
{a,b}=0;
end
initial
begin
for(i=0; i<4; i=i+1)
begin
{a,b}=i;
#10;
end


end


endmodule
