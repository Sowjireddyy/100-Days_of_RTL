`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.04.2024 21:38:43
// Design Name: 
// Module Name: Freq_devider_odd_num_tb
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


module freq_div_odd_tb();

 reg clk_in;
 wire clk_out;

freq_div_odd dut(.clk_in(clk_in), .clk_out(clk_out));

initial
begin
  clk_in=1;
end
 
always #10 clk_in= ~clk_in;
      
endmodule
