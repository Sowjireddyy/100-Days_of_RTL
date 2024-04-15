`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.04.2024 18:03:14
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(
    input j,k,clk,rst,
    output reg q,
    output q_bar
    );
    assign q_bar=~q;
    always@(posedge clk)
      begin
       if(rst)
         q<=0;
         else
           begin
             case({j,k})
              2'b00:q=q;
              2'b01:q=0;
              2'b10:q=1;
              2'b11:q=~q;
            default:q=q;
           endcase
         end
    end
    
              
endmodule
