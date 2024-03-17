`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 13:49:26
// Design Name: 
// Module Name: buff_tb
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


module buff_tb();
reg ctrl;
wire a,b;
reg temp_b,temp_a;



bi_dbuff buff_2(ctrl,a,b);
initial
begin
{temp_a,temp_b,ctrl}=0;
end
always #10 temp_a=~temp_a;
always #20 temp_b=~temp_b;
always #40 ctrl=~ctrl;
assign b=(ctrl==0)?temp_b:1'bz;
assign a=(ctrl==1)?temp_a:1'bz;


initial
$monitor("ctrl = %b,a = %b, b= %b",ctrl,a,b);
endmodule
