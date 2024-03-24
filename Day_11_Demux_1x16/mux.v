`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2024 09:48:09
// Design Name: 
// Module Name: mux
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


module mux(
    input a,
    input s0,s1,s2,s3,
    output [15:0] y
    );
    
  assign y[0]=~s3&~s2&~s1&~s0&a; 
  assign y[1]=~s3&~s2&~s1&s0&a;
  assign y[2]=~s3&~s2&s1&~s0&a;
  assign y[3]=~s3&~s2&s1&s0&a;
  assign y[4]=~s3&s2&~s1&~s0&a;
  assign y[5]=~s3&s2&~s1&s0&a;
  assign y[6]=~s3&s2&s1&~s0&a;
  assign y[7]=~s3&s2&s1&s0&a;
  assign y[8]=s3&~s2&~s1&~s0&a;
  assign y[9]=s3&~s2&~s1&s0&a;
  assign y[10]=s3&~s2&s1&~s0&a;
  assign y[11]=s3&~s2&s1&s0&a;
  assign y[12]=s3&s2&~s1&~s0&a;
  assign y[13]=s3&s2&~s1&s0&a;
  assign y[14]=s3&s2&s1&~s0&a;
  assign y[15]=s3&s2&s1&s0&a;

  
  
  
  
  
                
            
endmodule
