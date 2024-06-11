`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.06.2024 09:26:58
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

class trans;
  static int i;
  int j;
  static function void stat_fun();
    int b;
    i++;
    b++;
    $display("stat_fun,  i=%0d ,b=%0d",i,b);
  endfunction
  
  function static void fun_stat();
    int a;
    j++; 
    a++;
    $display("stat_fun,  j=%0d ,a=%0d",j,a);
  endfunction

endclass

module top();
trans t[];

initial   
   begin
    t=new[5];
    foreach(t[i])
     begin
       t[i]=new();
       t[i].stat_fun();
     end
     foreach(t[i])
        begin
          t[i].fun_stat();
        end
    end

endmodule
