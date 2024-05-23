`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 20:05:28
// Design Name: 
// Module Name: enum_dt_top
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


module enum_dt_top();
typedef enum {red,black,white,green,yellow} kom;
kom sow;
initial
  begin
   forever
     begin
      $display("%s :%0d ",sow.name,sow);
        if(sow==sow.last)
          break;
         sow= sow.next;
     end
   end
   

endmodule
