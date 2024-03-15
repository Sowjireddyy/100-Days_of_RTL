`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 14:20:38
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb();
reg    [7:0] d;
  wire   [2:0] e;
 wire v;
 integer k;
 priority_encoder_8_3 dut( d, e,v );
 initial
d=8'b00000000;
initial
begin
for(k=0; k<256; k=k+1)
begin
d=k;
#10;
end
end
initial
$monitor("d[0]=%b,d[1]=%b,d[2]= %b,d[3]= %b,d[4] =%b,d[5]= %b,d[6]= %b,d[7] =%b,e[2]= %b,e[1]= %b,e[0] =%b,e=%b",
d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7],e[2],e[1],e[0],v);
endmodule
