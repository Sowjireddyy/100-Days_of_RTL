`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2024 21:40:38
// Design Name: 
// Module Name: add_sub_tb
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


module add_sub_tb();

reg a0,a1,a2,a3,b0,b1,b2,b3,mode;
wire s0,s1,s2,s3,s4;

integer i;

adder_sub_ckt  DUT(a0,a1,a2,a3,b0,b1,b2,b3, mode,s0,s1,s2,s3,s4);
initial
begin
{mode,a0,a1,a2,a3,b0,b1,b2,b3}=i;
end
initial
 begin
 for(i=0; i<512; i=i+1)
  begin
   {a0,a1,a2,a3,b0,b1,b2,b3,mode}=i;
   #5;
   end
   
   end
   
endmodule
