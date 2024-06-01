`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 11:17:45
// Design Name: 
// Module Name: pass_by_ref
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


module pass_by_ref();
int ma=10;

function void pass_by_val( input int fa);
  fa=fa*2;
  $display("inside the function pass_by_value = %0d",fa);
endfunction

function automatic void pass_by_ref( ref int fa);
  fa=fa*2;
  $display("inside the function pass_by_ref = %0d",fa);
endfunction

initial
  begin
   pass_by_val(ma);
   $display("after calling function pass_by_value ma=%0d",ma);
   pass_by_ref(ma);
   $display("after calling function pass_by_ref ma=%0d",ma);
  end
  
endmodule
