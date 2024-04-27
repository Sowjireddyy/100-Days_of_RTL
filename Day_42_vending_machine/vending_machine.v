`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2024 16:39:45
// Design Name: 
// Module Name: vending_machine
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


module vending_machine(
    input clk,rst,i,j,
    output reg x,y
    );
    parameter s0=0,
              s1=1,
              s2=2,
              s3=3,
              s4=4;
    reg [2:0] pre_state,next_state;
    always@(posedge clk)
      begin 
      if(rst)
        pre_state<=s0;
      else
        pre_state<=next_state;
      end
     
     always@(*)
     
      begin
      x=1'b0;
      y=1'b0;
       case(pre_state)
         s0:begin
            if(i)
             begin
              if(j)
                next_state=s2;
               else
               next_state=s1;
               end
            else
             next_state=s0;
          end
        s1:begin
            if(i)
             begin
              if(j)
              begin
                next_state=s3;
               
                end
               else
               next_state=s2;
               end
            else
             next_state=s1;
          end
         s2:begin
            if(i)
             begin
              if(j)
             
                next_state=s4;
               else
               next_state=s3;
               
               end
            else
             next_state=s2;
          end
        s3:begin
           x=1'b1;
           next_state=s0;
           end
        s4:begin
           x=1'b1;
           y=1'b1;
           next_state=s0;
           end 
       default:next_state=s0; 
       endcase
        
     end
  //   assign x=((next_state==s3)||(next_state==s4))?1'b1:1'b0;
  //   assign y=(next_state==s4)?1'b1:1'b0;        
          
endmodule
