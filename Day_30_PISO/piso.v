`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2024 16:23:39
// Design Name: 
// Module Name: piso
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


module piso(
    input clk,rst,
    input [3:0] load,
    input shift,
    output  s
    );
    
    reg [3:0]temp_reg;
    reg a;
    assign s=a;
    always@(posedge clk)
    if(rst)
    temp_reg<=4'b0000;
    else if(!shift)
    temp_reg<= load [3:0] ;
    else
    begin 
    temp_reg[3:0]<= {1'b0,temp_reg[3:1]};
     a<=temp_reg[0];
   end
   
   
endmodule
