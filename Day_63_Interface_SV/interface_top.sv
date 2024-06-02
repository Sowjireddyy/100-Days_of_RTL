`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 09:46:46
// Design Name: 
// Module Name: interface_top
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



interface ckt_1();
logic b,c,e,f,h,i,j,k,m,n,o,p,q,r,s,t;
modport A(input r,c,n,output q,b,m);
modport B(input b,s,e,output c,t,f);
modport C(input f,k,h,output e,j,i);
modport D(input j,m,o,output k,n,p);
modport E(input q,t,i,p,output r,s,h,o);
endinterface :ckt_1

module a_1(input a, ckt_1.A bus);


endmodule 

module b_1(input d, ckt_1.B bus);


endmodule 


module c_1(input g , ckt_1.C bus);


endmodule 

module d_1(input l, ckt_1.D bus);


endmodule 

module e_1( ckt_1.E bus);


endmodule 

module top();
ckt_1 bus();
a_1 s_1(a,bus);
b_1 s_2(d,bus);
c_1 s_3(g,bus);
d_1 s_4(l,bus);
e_1 s_5(bus);


endmodule
