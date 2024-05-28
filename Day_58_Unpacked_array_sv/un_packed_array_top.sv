`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2024 20:11:37
// Design Name: 
// Module Name: un_packed_array_top
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


module un_packed_array_top();


logic [31:0] kom[5],sow[5];
int white[3][3]={'{0,1,2},'{3,4,5},'{6,7,8}};
initial
  begin
   for(int i=0; i<$size(kom);i++)
    begin
      kom[i]=i;
     $display("kom[%0d] = %0d",i,kom[i]);
    end
    
   foreach(sow[j])
   begin
     sow[j]=kom[j]*4;
     $display("sow[%0d]=%0d",j,sow[j]);
    end
   
     foreach(white[k,s])
       $display("white[%0d][%0d]=%0d",k,s,white[k][s]);
  end
endmodule

