`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2024 23:07:19
// Design Name: 
// Module Name: decimal_to_binary_encoder_tb
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


module decimal_to_binary_encoder_tb();
reg [9:0]d_in;
wire [3:0]d_out;

decimal_to_binary_encoder DUT( d_in,d_out );
initial 
  begin
  $monitor("d_in = %b,d_out = %b",d_in,d_out);
    d_in=10'b0000000000;
    #10;
    d_in=10'b0000000001;
    #10;
    d_in=10'b0000000010;
    #10;
    d_in=10'b0000000100;
    #10;
    d_in=10'b0000001000;
    #10;
    d_in=10'b0000010000;
    #10;
    d_in=10'b0000100000;
    #10;
    d_in=10'b0001000000;
    #10;
    d_in=10'b0010000000;
    #10;
    d_in=10'b0100000000;
    #10;
    d_in=10'b1000000000;
    #10;
   $finish;
   end
    
    
   
endmodule
