`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2024 09:29:42
// Design Name: 
// Module Name: assocative_top
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


module assocative_top();

int amem [int];

initial
  begin
   amem[2]=1;
   amem[100]=5;
   amem[5]=60;
   amem[200]=10;
   amem[30]=20;
   amem[20]=14;
   if(amem.exists(100))
     $display("entry exists in mem, whose value is %0d",amem[100]);
    
    else 
     $display("NO ENTRY");
     foreach(amem[i])
     $display("amem[%0d] = %0d",i,amem[i]);
     $display("number of entries in array is %0d",amem.num); 
  end 
  
endmodule
