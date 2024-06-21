`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 09:38:56
// Design Name: 
// Module Name: top
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


module top();
initial
  begin
    #10;
    fork
      begin
       #20
       $display("thread -1 is displayed at time T=%0t",$time);
      end
      begin:b
      #40;
       $display("thread -2 is displayed at time T=%0t",$time);
      end
      begin
       #30;
        $display("thread -3 is displayed at time T=%0t",$time);
      end
      join_none
       $display("exit is at time T=%0t",$time);
     end
endmodule
