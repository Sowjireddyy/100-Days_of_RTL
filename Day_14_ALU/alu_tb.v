`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2024 08:03:12
// Design Name: 
// Module Name: alu_tb
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


module alu_tb();
reg [7:0] a, b;
reg [3:0] command;
    reg enable;
    wire  [15:0] d_out;
  //  integer m,n,o,i;
    
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
    
  
 reg [4*8:0] string_cmd;
 
 alu a_1(a,b,command,enable,d_out);
 
 task initialize;
      begin
         {a,b}=16'h0000;
      end
 endtask
 
 task en_oe (input i);
      begin
        enable=i;
      end   
 endtask
 
 task inputs (input [7:0]j,k);
      begin
         a=j;
         b=k;
      end 
 endtask
 
 task cmd(input [3:0]l);
      begin
        command=l;
      end
 endtask
 
 task delay();
     begin
       #10;
     end 
 endtask
 
 always@(command)
 
    begin
       case(command)
             ADD:string_cmd = "ADD";
             INC:string_cmd = "INC";
             SUB:string_cmd = "SUB";
             DEC:string_cmd = "DEC";
             MUL:string_cmd = "MUL";
             DIV:string_cmd = "DIV";
             SHL:string_cmd = "SHL";
             SHR:string_cmd = "SHR";
             AND:string_cmd = "AND";
             OR:string_cmd = "OR";
             INV:string_cmd = "INV";
             NAND:string_cmd = "NAND";
             NOR:string_cmd = "NOR";
             XOR:string_cmd = "XOR";
             XNOR:string_cmd = "XNOR";
             BUF:string_cmd = "BUF";
        endcase
     end
    
initial 
   begin
    initialize;
    en_oe(1);
    inputs(8'd24,8'd12);
    cmd(ADD);
    delay;
    en_oe(1);
    inputs(8'd22,8'd14);
    cmd(ADD);
    delay;
    inputs(8'd32,8'd10);
    cmd(SUB);
    delay;
    inputs(8'd02,8'd10);
    cmd(MUL);
    delay;
    inputs(8'd02,8'd10);
    cmd(SHR);
    delay;
    inputs(8'd02,8'd10);
    cmd(DIV);
    delay;
    inputs(8'd02,8'd10);
    cmd(ADD);
    delay;
    $finish;
    
   end    
             /*
initial 
     begin
      {a,b,command,enable}=21'h000000;
     end        
 initial
   begin
     for(i=0; i<2000000; i=i+1)
       begin
         {a,b,command,enable}=i;
       delay;
      end
      end   */
 /*     
             
 initial
 begin 
  en_oe(1);
   
   for(m=0; m<16; m=m+1)
    begin
      for(n=0; n<16;n=n+1)
        begin
         inputs(m,n);
         for(o=0; o<16; o=o+1)
         begin
           command=o;
           delay;
         end 
       end 
    end
 end 
    */
   
   initial
   $monitor("a = %d,b =%d,command = %d,enable = %d,d_out = %d",a,b,command,enable,d_out);
          
 
 endmodule