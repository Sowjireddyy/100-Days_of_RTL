`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2024 23:06:39
// Design Name: 
// Module Name: decimal_to_binary_encoder
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


module decimal_to_binary_encoder(
    input [9:0] d_in,
    output reg [3:0] d_out
    );
    
    always@(d_in)
      begin
      
       case(d_in)
         10'b0000000001:d_out=4'b0000;
         10'b0000000010:d_out=4'b0001;
         10'b0000000100:d_out=4'b0010;
         10'b0000001000:d_out=4'b0011;
         10'b0000010000:d_out=4'b0100;
         10'b0000100000:d_out=4'b0101;
         10'b0001000000:d_out=4'b0110;
         10'b0010000000:d_out=4'b0111;
         10'b0100000000:d_out=4'b1000;
         10'b1000000000:d_out=4'b1001;
        default:d_out=4'b0000;
      endcase
    end
         
         
         
endmodule
