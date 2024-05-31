`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 08:20:34
// Design Name: 
// Module Name: automatic_task_top
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


module automatic_task_top();
task automatic double(input int a,input string s);
#5;
a=a*2;
$display($time,"s=%0s  a = %0d",s,a);
endtask

initial
 fork
  begin
   double(3,"FROM THREAD:1");
  end
  
  begin
   #2;
   double(4,"FROM THREAD: 2");
  end
 join
 
 
endmodule
