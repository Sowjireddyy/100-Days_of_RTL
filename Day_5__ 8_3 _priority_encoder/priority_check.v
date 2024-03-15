`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.03.2024 12:38:19
// Design Name: 
// Module Name: priority_check
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


module priority_check(
    input [7:0] i,
    output [7:0] y,
    output v
    );
    
    assign y[7]=i[7];
    assign y[6]=i[6]&~i[7];
    assign y[5]=i[5]&~i[6]&~i[7];
    assign y[4]=i[4]&~i[5]&~i[6]&~i[7];
    assign y[3]=i[3]&~i[4]&~i[5]&~i[6]&~i[7]; 
    assign y[2]=i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7]; 
    assign y[1]=i[1]&~i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];
    assign y[0]=i[0]&~i[1]&~i[2]&~i[3]&~i[4]&~i[5]&~i[6]&~i[7];

    assign v =y[0]|y[1]|y[2]|y[3]|y[4]|y[5]|y[6]|y[7];           
    
endmodule
