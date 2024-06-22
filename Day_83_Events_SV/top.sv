`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2024 08:58:22
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
event ev;
initial
  begin
    $display("display statement-1 of A");
    #10;
     $display("display statement-2 of A at time =%t",$time);
    ->ev;
 end
 initial 
    begin
      $display("display statement-3 of A");
      #10;
      @(ev);
       $display("display statement-4 of A at time =%t",$time);
    end
    
    initial
  begin
    $display("display statement-1 of B");
    #10;
     $display("display statement-2 of B at time =%t",$time);
    ->ev;
 end
 initial 
    begin
      $display("display statement-3 of B");
      #10;
      wait(ev.triggered);
       $display("display statement-4 of B at time =%t",$time);
    end
endmodule

/*
module test();
event ev;
initial
  begin
    $display("display statement-1");
    #10;
     $display("display statement-2 at time =%t",$time);
    ->ev;
 end
 initial 
    begin
      $display("display statement-3");
      #10;
      wait(ev.triggered);
       $display("display statement-4 at time =%t",$time);
    end
endmodule
*/