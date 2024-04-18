`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 20:30:20
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
reg [3:0]d_in;
reg clk,rst,load;
wire [3:0] c_out;

up_counter DUT(d_in, clk,rst,load,c_out);

initial
 begin
   clk=0;
  forever #10 clk=~clk;
 end 
 
 task initialize;
   begin
     d_in=4'b0000;
     load=1'b0;
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
 
 task inputs(input [3:0] a);
   begin
     d_in=a;
     
   end
 endtask
 
 
 task loading;
  begin
   @(negedge clk)
    load=1'b1;
   @(negedge clk)
    load=1'b0;
  end
 endtask
 
 
 initial
 begin
   initialize;
   reset;
  #40;
    
   inputs(4'b0110);
   loading;
   #50
   inputs(4'b1110);
   loading;
   
  end
   
endmodule
