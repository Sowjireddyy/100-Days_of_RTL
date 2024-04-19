`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 22:25:41
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
    reg clk,rst,load;
   wire [3:0] c_out;
  
   
mod_12  DUT(d_in,clk,rst,load,c_out);
 
 initial
  begin
   clk=0;
    forever #5 clk =~clk;
   end
   
   task initialize;
  begin
   d_in[3:0]=4'b0000;
   rst=1'b0;
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
   
   task loading();
     begin
      @(negedge clk)
        load=1'b1;
      @(negedge clk)
        load=1'b0;
     end
   endtask
   
  
  task inputs(input [3:0]i);
    begin
     
       d_in=i;
    end 
   endtask 
  
  
 
 
 initial
 begin
   initialize;
   reset;
   
   inputs(4'b1101);
 
  #70;
  inputs(4'b0101);
   loading;
   
  #30;
   initialize;
  inputs(4'b1110);
   loading;
   
  
   
   
  end
   
endmodule
