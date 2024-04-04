`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2024 19:09:49
// Design Name: 
// Module Name: demux_1_N_tb
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


module demux_1_N_tb();
reg a;
reg [3:0] s;
wire [15:0]y;

integer i;
 demux_1_N DUT( a,s, y );
 
 initial
    begin
     a=1'b1;
     for(i=0; i<16; i=i+1)
     begin
     s=i;
    #10;
    end
    $finish;
   end
    
endmodule
