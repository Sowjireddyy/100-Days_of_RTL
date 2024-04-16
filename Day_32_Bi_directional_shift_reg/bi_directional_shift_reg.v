`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.04.2024 20:42:20
// Design Name: 
// Module Name: bi_directional_shift_reg
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


module bi_directional_shift_reg(
    input d_in,clk,rst,right,
    output reg [3:0] d_out
    );
    
    
    
    
    always@(posedge clk)
      begin
       if(rst)
         d_out<=0;
       else if(right)
           d_out<={d_in,d_out[3:1]};
       else 
           d_out<={d_out[2:0],d_in};
     end
     
endmodule
