`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 17:45:25
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
class transaction;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [3:0] c;
  rand bit [3:0] d;
  bit mode;
  constraint range_c{soft c > 15; }
  constraint range_b{b  inside{3,7,[10:15]};}
   constraint range_a{ mode==1'b1 -> a <8;
                     mode==1'b0 ->  a inside {[10:15]}; }
  extern constraint d_range;
  endclass
  constraint transaction :: d_range{d inside{ [10:15]};} 
module top();
transaction th;
initial
  begin
    th=new();
    repeat(5)
      begin
        int sucess;
        sucess=th.randomize() with {c <15;};
        
        $display("c = %0d",th.c);
        $display("b = %0d",th.b);
        $display("a = %0d",th.a);
        $display("d = %0d",th.d);
        $display("sucess = %0d",sucess); 
      end
       th.mode=1'b1;
        repeat(5)
      begin
      int sucess;
       sucess=th.randomize();
        $display("a = %0d",th.a);
        $display("sucess = %0d",sucess); 
      end     
    end
endmodule
