`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 19:30:54
// Design Name: 
// Module Name: mod_n_tb
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


module mod_n_tb();
  reg clk,rst;
 parameter N = 2; 
  wire [N-1:0]Q;
 
  
/////instantiation
mod_n_counter DUT(clk,rst,Q);
 
 ///initialization
 initial
  begin
   {clk,rst} = 0;
  end

////clock
 initial
  begin
   clk = 1'b0;
   forever
   #5 clk = ~ clk;
 end

 ////reset
 initial
  begin
    @(negedge clk)
	  rst = 1'b1;
	@(negedge clk)
      rst = 1'b0;
	#10;
	@(negedge clk)
	  rst = 1'b1;
	#1;
	@(negedge clk)
      rst = 1'b0;
  end

 endmodule
   
  
 
