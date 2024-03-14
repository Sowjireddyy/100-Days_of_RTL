`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.03.2024 12:28:53
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg [2:0]in;
wire [7:0]d;
  
decoder_3_8  dec_1(in,d);
  task initialize;
    begin
     in=3'b000;
    end
  endtask
 
 task inputs (input [2:0]j);
   begin
     in=j;
   end 
 endtask
 task delay();
   begin
     #10;
   end
 endtask
 
 
 initial 
  begin
   initialize;
   inputs (3'b000);
   delay;
   inputs (3'b001);
   delay;
   inputs (3'b010);
   delay;
   inputs (3'b011);
   delay;
   inputs (3'b100);
   delay;
   inputs (3'b101);
   delay;
   inputs (3'b110);
   delay;
   inputs (3'b111);
   delay;
   
   
   
end
initial 
#80 $finish;
   
endmodule
