`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 16:40:17
// Design Name: 
// Module Name: vending_v
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


module vending_v();
reg clk,rst,i,j;
    wire x,y;
    
 vending_machine dut(clk,rst,i,j,x,y);
 initial 
 begin
  clk=0;
  forever
   #5 clk=~clk;
   end
   
   task initialize;
   begin
   i=0;
   j=0; 
  
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
   
   task inputs(input a,b);
   begin
   @(negedge clk)
   i=a;
   j=b;
   end
   endtask
   
   initial
     begin
       initialize;
       reset;
       
       inputs(1'b0,1'b0);
       #10; 
       inputs(1'b0,1'b1);
       #10; 
       inputs(1'b1,1'b0);
       #10; 
       
       inputs(1'b1,1'b0);
       #10; 
       inputs(1'b1,1'b0);
       #10; 
       reset;
       inputs(1'b1,1'b1);
       #10; 
       inputs(1'b1,1'b0);
       #10; 
       reset;
       inputs(1'b1,1'b0);
       #10; 
       inputs(1'b1,1'b0);
       #10; 
       inputs(1'b1,1'b1);
       #10; 
       reset;
       inputs(1'b1,1'b1);
       #10; 
       $finish;
       end 
     
endmodule
