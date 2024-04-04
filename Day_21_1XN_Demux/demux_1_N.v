`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 19:09:02
// Design Name: 
// Module Name: demux_1_N
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


module demux_1_N( a,s, y );
    parameter N=16;
     input a;
     input [3:0] s;
     output reg [N-1:0] y;    
    
    
    
    
    always@(a,s)
      begin
      y=15'b0000000000000000;
        case(s)
          4'b0000: y[0]= a;
          4'b0001: y[1]= a;
          4'b0010: y[2]= a;
          4'b0011: y[3]= a;
          4'b0100: y[4]=a;
          4'b0101: y[5]= a;
          4'b0110: y[6]= a;
          4'b0111: y[7]= a;
          4'b1000: y[8]= a;
          4'b1001: y[9]= a;
          4'b1010: y[10]= a;
          4'b1011: y[11]= a;
          4'b1100: y[12]= a;
          4'b1101: y[13]= a;
          4'b1110: y[14]= a;
          4'b1111: y[N-1]= a;
          default: y=15'b000000000000000;
       endcase
   end       
endmodule
