`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2024 21:52:22
// Design Name: 
// Module Name: either_edge_detector_tb
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


module either_edge_detector_tb();
 reg clk,d,rst;
 wire detector;

either_edge_detector DUT( clk,d,rst,detector);

initial
begin
  clk=0;
  forever #5 clk=~clk;
end 

task initialize;
  begin
    rst=0;
    d=0;
  end 
endtask

task reset;
  begin
   @(negedge clk)
    rst=1'b1;
   @(negedge clk)
    rst=1'b0;
  end
  endtask
  
  task d_input(input K);
 begin
   @(posedge clk)
    #3 d = K;
 end
endtask

////Stimulus
initial 
 begin
  initialize;
  reset;
  d_input(1'b1);
  #10;
  d_input(1'b0);
  #10;
  d_input(1'b1);
  #10;
  d_input(1'b0);
  #10;
  d_input(1'b1);
  #10;
  
 end
 
initial #100 $finish;

endmodule 

