`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 13:30:16
// Design Name: 
// Module Name: type_convertions_top
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


module type_convertions_top();

int kom;
real sow;
initial
  begin
    kom=int'(20.0-0.1);
    sow=real'(20);
    $display("kom= %0d sow =%0d",kom,sow);
  end
  
endmodule
