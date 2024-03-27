`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 07:56:40
// Design Name: 
// Module Name: alu
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


module alu(
    input [7:0] a,
    input [7:0] b,
    input [3:0] command_in,
    input oe,
    output  [15:0] d_out
  
    );
    parameter ADD= 4'B0000,
              INC= 4'B0001,
              SUB= 4'B0010,
              DEC= 4'B0011,
              MUL= 4'B0100,
              DIV= 4'B0101,
              SHL= 4'B0110,
              SHR= 4'B0111,
              AND= 4'B1000,
              OR=  4'B1001,
              INV= 4'B1010,
              NAND= 4'B1011,
              NOR= 4'B1100,
              XOR= 4'B1101,
              XNOR=4'B1110,
              BUF= 4'B1111;
    
  
 reg [15:0] out;
  always@(command_in)
    begin
      
      case(command_in)
        
       ADD : out = a + b;
       INC : out = a + 1;
       SUB : out = a - b;
       DEC : out = a -1;
       MUL : out = a * b;
       DIV : out = a / b;
       SHL : out = a <<b;
       SHR : out = a>> b;
       AND : out =a &b;
       OR  : out =a| b;
       INV : out =~a;
       NAND: out =~(a&b);
       NOR : out =~(a|b);
       XOR : out =a^b;
       XNOR: out =~(a^b);
       BUF : out =a;
        
        default : out =16'h0000;
        
      endcase
      
    end
    assign d_out= (oe)?out:16'hzzzz;
    
    
endmodule
