`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 17:10:31
// Design Name: 
// Module Name: sr_tb
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


module sr_tb();

reg s,r,c;
wire q,q_bar;

sr_ff DUT(s,r,c,q,q_bar);

task initialize;
 begin
   {s,r,c}=3'b000;
 end
endtask

/*task control();
 begin
   c=1'b0;
   delay;
   c=1'b1;
  end
 endtask   */

task inputs(input j,k);
  begin
    s=j;
    r=k;
    
  end 
endtask 

task delay();
 begin
  #10;
 end 
endtask

initial
  begin
   initialize;
   c=1'b0;
   inputs(1'b0,1'b1);
   delay;
   inputs(1'b0,1'b0);
   delay;
   c=1'b1;
   inputs(1'b1,1'b0);
   delay;
   inputs(1'b1,1'b1);
   delay;
   inputs(1'b0,1'b1);
   delay;
  
   inputs(1'b0,1'b0);
   delay;
   c=1'b0;
   inputs(1'b1,1'b0);
   delay;
   inputs(1'b0,1'b1);
   delay;
   
   
   
  end
  
endmodule
