`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.05.2024 22:01:00
// Design Name: 
// Module Name: d_ff
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


module d_ff();

  paramaters CYCLE = 20;
  logic D,clk,rst,Q;
  
  ///instantiation
   D_ff_behavioural d_ff_tb(D,clk,rst,Q);
  
  initial
   begin
    clk = 0;
	rst = 0;
	
	forever
	 #(CYCLE/2)
	 clk = ~clk;
	 
	 @(negedge clk)
	  rst = 1'b1;
	 @(negedge clk)
      rst = 1'b0;
   end
   initial
   begin
   $display("d_in = %0d  output =%0d",d,q);
   
   #100;
   $finish;
   end
  endmodule  
  
