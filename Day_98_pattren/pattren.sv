`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 08:15:21
// Design Name: 
// Module Name: pattren
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
rand bit[3:0] a[]; 

constraint c1{a.size==10;}
constraint c2{foreach(a[i])
             if(i%2==0)
              a[i]==0;
              else if(i%2==1)
              a[i]==(i+1)/2;
              }
function void  post_randomize();
  $display("%0p",a);
endfunction 


endclass

module pattren();
int c;
trans th1=new; 
initial
  begin
      // th1=new();
     
      assert(th1.randomize);
      //th1.display;
     $display("%0p",th1.a);
      
  end
  
endmodule
