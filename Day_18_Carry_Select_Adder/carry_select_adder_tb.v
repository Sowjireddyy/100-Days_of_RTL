`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.03.2024 16:41:12
// Design Name: 
// Module Name: carry_select_adder_tb
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


module carry_select_adder_tb();
reg [3:0] a,b;
reg c_in;
wire c_out;
wire [3:0] s;
integer i;
carry_select_adder DUT( a,b, c_in,c_out, s);

initial
  begin
  $monitor("A = %d,B = %d,c_in = %d ,c_out = %d,s = %d",a,b,c_in,c_out,s);
 
   for(i=0; i<512; i=i+1)
     begin
     {a,b,c_in}=i;
     
          #5;
        end
     
   
    $finish; 
  end
  
endmodule
