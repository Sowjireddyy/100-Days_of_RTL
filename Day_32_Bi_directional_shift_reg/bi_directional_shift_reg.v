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
    output  [3:0] d_out
    );
    
     
    reg [3:0] temp_reg;
    assign d_out=temp_reg;
    always@(posedge clk)
      begin
       if(rst)
         temp_reg<=0;
       else if(right)
           temp_reg<={d_in,temp_reg[3:1]};
       else 
           temp_reg<={temp_reg[2:0],d_in};
     end
        
endmodule
