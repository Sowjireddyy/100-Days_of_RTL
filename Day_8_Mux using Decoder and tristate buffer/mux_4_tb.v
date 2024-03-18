`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 09:09:02
// Design Name: 
// Module Name: mux_4_tb
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


module mux_4_tb();
reg s1,s0,i3,i2,i1,i0;
wire  y;
integer i;
mux4_decoder mux_1(s1,s0,i3,i2,i1,i0,y);
initial
begin
{s1,s0,i3,i2,i1,i0}=1'b0;
end 
initial
begin
for(i=0; i<64; i=i+1)
begin
{s1,s0,i3,i2,i1,i0}=i;
#10;
end

end
initial
$monitor("s1 =%b,s0=%b,i3=%b,i2=%b,i1=%b,i0=%b,y=%b",s1,s0,i3,i2,i1,i0,y);


endmodule
