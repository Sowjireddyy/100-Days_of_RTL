`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2024 10:18:45
// Design Name: 
// Module Name: mem_tb
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


module mem_tb();
reg wr_in,re_in,clk,rst;
reg [3:0]addr;
wire [7:0]d_in_out;

reg [7:0]temp_reg;
mem DUT(d_in_out, addr, wr_in,re_in,clk,rst);

assign d_in_out=temp_reg;
initial
 begin
  clk=0;
   forever #5 clk=~clk;
 end
 
 task initialize;
 begin
  temp_reg=8'h00;
  wr_in=0;
  re_in=0;
  addr=4'h0;
  end
  endtask
  
  task reset();
  begin 
   @(negedge clk)
    rst=1'b1;
   @(negedge clk)
    rst=1'b0;
  end
  endtask
  
 task writeinputs(input [7:0]a,input [3:0] b);
 
   begin
   @(posedge clk)
    temp_reg=a;
    @(negedge clk)
    addr =b;
   end
  endtask
  
  task readinputs(input [3:0] b);
 
   begin
   @(negedge clk)
    
    addr =b;
   end
  endtask
  
  initial
   begin
    initialize;
    reset;
    writeinputs(8'b00110011,4'b1101);
    wr_in=1'b1;
    #10;
    wr_in=1'b0;
     readinputs(4'b1101);
     re_in=1'b1;
     
    #10;
    re_in=1'b0;
     writeinputs(8'b00111111,4'b1001);
    wr_in=1'b1;
    #10;
    wr_in=1'b0;
     readinputs(4'b1001);
     re_in=1'b1;
     
    #10;
    re_in=1'b0;
    end
    
endmodule
