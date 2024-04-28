`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2024 18:24:30
// Design Name: 
// Module Name: fifo
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


module fifo(
    input clk,rst,re,we,
    input [7:0] d_in,
    output empty,full,
    output  reg [7:0] d_out
    );
    
    reg [4:0]wr_pt=5'b0;
    reg [4:0]re_pt=5'b0;
    reg [7:0] mem [15:0];
     integer i;
     assign empty=(wr_pt==re_pt)?1'b1:1'b0;
     assign full=(wr_pt==5'b10000 && re_pt==4'b00000)?1'b1:1'b0;
     always@(posedge clk)
     begin
       if(rst)
       begin
        for(i=0; i<16; i=i+1)
        
         mem[i]=0;
         wr_pt<=5'b0;
         re_pt<=5'b0;
         end
      
       else if ((we==1'b1)&&(full==1'b0))
        begin 
        mem[wr_pt]<=d_in;
        wr_pt<=wr_pt+1;
       end
       else
       wr_pt<=wr_pt;
       end
        always@(posedge clk)
     begin
       if(rst)
       begin
       
         re_pt<=5'b0;
         d_out<=8'b0;
         end
      
       else if ((re==1'b1)&&(empty==1'b0))
        begin 
        d_out<=mem[re_pt];
        re_pt<=re_pt+1;
       end
       else
       re_pt<=re_pt;
      end 
       
       
endmodule
