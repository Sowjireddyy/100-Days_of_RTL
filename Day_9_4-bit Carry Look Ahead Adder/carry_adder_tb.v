`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 19:15:56
// Design Name: 
// Module Name: carry_adder_tb
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


module carry_adder_tb();

reg a0,a1,a2,a3,b0,b1,b2,b3;
wire s0,s1,s2,s3,c_out;
integer i;
carry_look_ahead_adder DUT( a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2,s3,c_out);
initial 
begin 
 {a0,a1,a2,a3}=4'b0000;
 {b0,b1,b2,b3}=4'b0000;
 
 end
 
 initial
  begin
   for(i=0; i<256; i=i+1)
   begin
    {a0,a1,a2,a3,b0,b1,b2,b3}=i;
    #5;
    end 
    #800 $finish;
    end
    
   initial
   begin
   $monitor("a0=%b,a1=%b ,a2 =%b,a3 =%b,b0=%b,b1 =%b ,b2=%b,b3=%b,s0=%b,s1=%b,s2=%b,s3=%b,c_out=%b",a0,a1,a2,a3,b0,b1,b2,b3,s0,s1,s2,s3,c_out);
  
    end
endmodule
