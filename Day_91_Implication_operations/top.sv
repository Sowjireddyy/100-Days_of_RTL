`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2024 14:42:17
// Design Name: 
// Module Name: top
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


module top();
   
 bit clock;
   bit req;
   bit Ack;
  
 sequence request;
    req;
  endsequence

  sequence acknowledge;
    ##[1:2] Ack;
  endsequence

  property handshake;
    @(posedge clock) request |-> acknowledge;
  endproperty

  assert property (handshake);
  

 endmodule	
 