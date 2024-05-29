`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 09:30:00
// Design Name: 
// Module Name: queues_arrays_top
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


module queues_arrays_top();

int kom[$]={1,3,4,5,6};
int sow[$]={2,3};
int k=2;
initial
  begin
sow.insert(1,k);
kom.delete(1);
$display("kom = %0p",kom);
kom.push_front(7);
$display("kom = %0p",kom);
k=kom.pop_back();
$display(" kom = %0p",kom);
sow.push_back(4);
$display("sow = %0p",sow);
k=sow.pop_front();
$display("sow = %0p",sow);
foreach(kom[i])
  $display("kom[%0d] = %0d",i,kom[i]);
 sow.delete();
 end
endmodule
