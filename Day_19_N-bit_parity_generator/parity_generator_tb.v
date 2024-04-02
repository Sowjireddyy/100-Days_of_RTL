`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 22:11:43
// Design Name: 
// Module Name: parity_generator_tb
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


module parity_generator_tb();
reg [7:0] data_in;
wire  odd_parity,even_parity;

 n_bit_parity_generator DUT(data_in,odd_parity,even_parity);
 initial
   begin
    data_in=8'b00000000;
    #10;
     data_in=8'b00110000;
    #10;
     data_in=8'b00001110;
    #10;
     data_in=8'b11100000;
    #10;
     data_in=8'b00111000;
    #10;
     data_in=8'b00101010;
    #10;
     data_in=8'b01101100;
    #10;
     data_in=8'b10101010;
    #10;
     data_in=8'b11001010;
    #10;
    $finish;
  end
  initial
   $monitor(" data_in = %b,odd_parity = %b,even_parity = %b",data_in,odd_parity,even_parity); 
    
    
    
    
endmodule
