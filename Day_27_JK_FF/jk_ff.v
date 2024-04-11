`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.03.2024 17:30:55
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
    output reg q,output q_bar
    );
    
    parameter HOLD=2'b00,
              RESET=2'b01,
              SET=2'b10,
              TOGGLE=2'b11;
    
    assign q_bar=~q;
    always@(posedge clk)
      begin
       if(rst)
          q<=1'b0;
        else
         begin
          case({j,k})
             HOLD:q<=q;
             RESET:q<=1'b0;
             SET:q<=1'b1;
             TOGGLE:q<=~q;
           endcase
          end
      end
endmodule
