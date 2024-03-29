`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 20:15:21
// Design Name: 
// Module Name: majority_tb
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


module majority_tb();
reg [5:1] a;
wire y;
integer i;
  majority_ckt DUT( a,y);
    initial
     begin
      for(i=0; i<32; i=i+1)
        begin
          a=i;
          #10;
        end
        $finish;
     end
  initial
  $monitor("A=%b,Y= %b",a,y);   
endmodule
