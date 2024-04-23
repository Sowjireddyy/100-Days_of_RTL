`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 14:46:47
// Design Name: 
// Module Name: ram
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


module ram(
    input [7:0] d_in,
    input [3:0] wr_addr,re_addr,
    input clk,rst,re,wr,
    output  reg [7:0] d_out
    );
    parameter width=8,
              depth=16;
      
     reg [(width-1):0] mem [(depth-1):0];
     integer i;
     always@(posedge clk)
        begin
          if(rst)
            begin
              for(i=0; i<16; i=i+1)
                mem[i]=0;
             end
       else
       begin
          if(wr)
               mem[wr_addr]<=d_in;
          else if(re)
               d_out<=mem[re_addr];
       end
      end
endmodule
