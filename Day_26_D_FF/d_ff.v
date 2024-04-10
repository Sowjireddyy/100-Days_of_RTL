`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 18:29:54
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    input d_in,clk,rst,
    output reg q,
    output q_bar
    );
    assign q_bar=~q;
    always@(posedge clk)
      begin
        if(rst)
          begin
            q<=0;
          end
        else
         begin
          q<=d_in;
         end
      end
endmodule
