`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 08:24:22
// Design Name: 
// Module Name: top
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

module top();
reg a,b ;
assign b=!a;
always_comb begin
comp_a: assert(b!=a)
$display("at t=%0t,passed",$time);
else
$display("at t=%0t,failed",$time);
end

initial
begin
a=1;
#10;
a=0;
#20;
$finish;
end
endmodule


