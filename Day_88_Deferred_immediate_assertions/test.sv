`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.07.2024 17:35:51
// Design Name: 
// Module Name: test
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


module test();
reg a,b ;
assign b=!a;
always_comb begin
comp_a: assert #0 (b!=a)
$display("at t=%0t",$time);
else
$display("at t=%0t",$time);
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


