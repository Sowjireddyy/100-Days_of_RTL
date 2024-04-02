`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2024 22:03:23
// Design Name: 
// Module Name: n_bit_parity_generator
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


module n_bit_parity_generator(
     data_in,
   odd_parity,even_parity
    );
    
    parameter N=8;
      input [N-1:0] data_in;
      output odd_parity,even_parity;
      
      assign even_parity=^(data_in);
      assign odd_parity=!(even_parity);
      
      
endmodule
