`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.04.2024 13:17:49
// Design Name: 
// Module Name: ring_counter_4_bit
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


module ring_counter_4_bit(
    input d_in,pre,clr,clk,
    output reg d_out
    );
    
    reg [0:3] temp;
    
    always@(posedge clk or posedge clr or posedge pre)
    begin
     if(clr)
      begin
      temp<=4'b0000;
      d_out<=0;
      end
    else if(pre)
     begin
      temp<=4'b1111;
      d_out<=1;
     end
    else
     begin
     temp<={d_in,temp[0:2]};
      d_out<=temp[3];
     end
   end
  
      
endmodule
