`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 08:40:28
// Design Name: 
// Module Name: seq_101
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


module seq_101(
    input clk,rst,in,
    output out
    );
    parameter s0=2'b00,
              s1=2'b01,
              s2=2'b10,
              s3=2'b11;
              
    reg [1:0] pre_state,next_state;
    always@(posedge clk)
    begin
      if(rst)
        pre_state<=s0;
        else
         pre_state<=next_state;
     end
     always@(*)
      begin
        case(pre_state)
            s0:begin
               if(in)
                next_state=s1;
                else
                next_state=s0;
                end
            s1:begin
                if(in)
                next_state=s1;
                else
                 next_state=s2; 
                 end
                  
            s2:begin
               if(in)
                 next_state=s3;
                 else
                  next_state=s0;
                  end
            s3:begin
               if(in)
                 next_state=s1;
                 else
                 next_state=s2;
                 end
             endcase
             end
         assign out=pre_state==s3?1:0;
         
         
endmodule
