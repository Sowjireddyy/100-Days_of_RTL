`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.03.2024 11:20:46
// Design Name: 
// Module Name: count_tb
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


module count_tb();

reg [3:0] d_in;
reg clk,load,rst,mode;
wire [3:0]c_out;

up_down_count DUT(d_in,clk,rst,load,mode,c_out);

initial
 begin
  clk=0;
  forever #5 clk=~clk;
 end
 
 task initialize;
   begin
     d_in=4'b0000;
     load=1'b0;
     mode=1'b0;
  end
 endtask
 
 task reset();
  begin
    @(negedge clk)
      rst=1'b1;
    @(negedge clk)
      rst=1'b0;
  end
  endtask
  
  task loading();
    begin
    @(negedge clk)
      load=1'b1;
    @(negedge clk)
      load=1'b0;
    end
  endtask
  
  
  task inputs(input [3:0]k);
    begin
      d_in=k;
    end
  endtask
  
  initial
    begin
      initialize;
      reset;
      #40;
      mode=1'b1;
      #60;
      d_in=4'b0010;
      loading;
      #50
      mode=1'b0;
      d_in=4'b1100;
      loading;
      
      
   end
      
      
      
      
  
endmodule
