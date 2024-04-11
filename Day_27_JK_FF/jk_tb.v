`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 17:44:38
// Design Name: 
// Module Name: jk_tb
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


module jk_tb();
reg j,k,clk,rst;
wire q, q_bar;
  /* parameter HOLD=2'b00,
           RESET=2'b01,
           SET=2'b10,
           TOGGLE=2'b11;
           */
           
 jk_ff  DUT( j,k,clk,rst, q, q_bar);
 
 initial
  begin
    clk=0;
    forever #10 clk=~clk;
  end 
 
 task initialize;
  begin
    j=0;
    k=0;
    rst=0;
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
 
 task inputs(input a,b);
  begin
    @(negedge clk)
      j=a;
      k=b;
   end 
 endtask
 
 task delay;
 begin
  #10;
 end
 endtask
 
 initial
   begin
     initialize;
     reset;
     
      inputs(1'b0,1'b1);
     delay;
      inputs(1'b0,1'b1);
     delay;
      inputs(1'b1,1'b1);
     delay;
      inputs(1'b1,1'b0);
     delay;
      inputs(1'b1,1'b1);
     delay;
     reset;
      inputs(1'b0,1'b1);
     delay;
      inputs(1'b1,1'b0);
     delay;
      inputs(1'b1,1'b0);
     delay;
      inputs(1'b0,1'b1);
     delay;
      inputs(1'b1,1'b1);
     delay;
      inputs(1'b0,1'b0);
     delay;
      inputs(1'b1,1'b1);
     delay;
    end
  
     
     
 endmodule


