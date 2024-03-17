`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.03.2024 13:40:12
// Design Name: 
// Module Name: bi_dbuff
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


module bi_dbuff(
    input ctrl,
    inout a,
    inout b
    );
  
    bufif1 b_1(b,a,ctrl);
    bufif0 b_2(a,b,ctrl);
  
endmodule
