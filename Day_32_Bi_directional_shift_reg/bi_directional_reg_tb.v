`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 21:05:05
// Design Name: 
// Module Name: bi_directional_reg_tb
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


module bi_directional_reg_tb();
reg d_in,clk,rst,right;
wire [3:0] d_out;

bi_directional_shift_reg DUT( d_in,clk,rst,right,d_out);

initial
  begin
   clk=0;
   forever #5 clk=~clk;
  end
  
  task initialize;
  
    begin
     d_in=1'b0;
     right=1'b0;
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
   
   initial
     begin
      initialize;
      reset;
      @(negedge clk)
      right=1'b0;
      d_in=1'b1;
      #10;
       d_in=1'b1;
      #10;
       d_in=1'b0;
      #10;
       d_in=1'b1;
      #50;
      @(negedge clk)
       right=1'b1;
      d_in=1'b1;
      #10;
       d_in=1'b1;
      #10;
       d_in=1'b0;
      #10;
       d_in=1'b1;
      #50;
      $finish;
  end
  
      
        

endmodule
