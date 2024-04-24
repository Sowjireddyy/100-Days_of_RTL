`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 10:17:21
// Design Name: 
// Module Name: mem
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


module mem(
    inout [7:0] d_in_out,
    input [3:0] addr,
    input wr_in,re_in,clk,rst
    );
    
    parameter width=8,
              depth=16;
           reg [(width-1):0] mem [(depth-1):0];
           reg [7:0] tempreg;
           integer i;
          always@(posedge clk)
           begin
            if(rst)
              begin
                for(i=0; i<16; i=i+1)
                  begin
                   mem[i]=0;
                  end
                  end
                  
                  else if(wr_in&&!re_in)
                  begin
                  mem[addr]<=d_in_out;
                  end
            end     
           always@(posedge clk)       
           begin
            if(rst)
             tempreg<=8'h00;
             
             else if(re_in&&!wr_in)
                begin
                 tempreg<=mem[addr];
                 end
            
           end   
              assign d_in_out=(re_in&&!wr_in)?tempreg:8'hzz;
endmodule
