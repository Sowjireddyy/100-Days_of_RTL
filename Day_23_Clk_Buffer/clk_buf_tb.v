`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 20:54:34
// Design Name: 
// Module Name: clk_buf_tb
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


module clk_buf_tb();
reg mclk;
wire bclk;
realtime t1,t2,t3,t4,t5,t6;
clk_buffer  DUT(mclk,bclk);

initial
begin
 mclk=0;
 forever #10 mclk=~mclk;
 end
 
 task master ;
  begin
   @(negedge mclk)
    t1=$realtime;
    @(negedge mclk)
    t2=$realtime;
    t3=t2-t1;
   end
 endtask
 
 task buffout ;
  begin
   @(negedge mclk)
    t4=$realtime;
    @(negedge mclk)
    t5=$realtime;
    t6=t5-t4;
   end
 endtask
 
 task freq_phase;
 realtime f,p;
 begin
 f=t6-t3;
 p=t4-t1;
 $display("fre_diff= %t,phase_diff =%t",f,p);
 end
 endtask
 
 initial
  begin
   fork
   master;
   buffout;
   join
   freq_phase;
   end
   
 
endmodule
