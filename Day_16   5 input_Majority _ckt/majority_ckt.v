`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 20:14:42
// Design Name: 
// Module Name: majority_ckt
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


module majority_ckt(
    input [5:1] a,
    output y
    );
    
   
wire [9:0] w;

// instantiate with And Gates
and and1(w[0],a[3],a[4],a[5]);
and and2(w[1],a[2],a[4],a[5]);
and and3(w[2],a[2],a[3],a[5]);
and and4(w[3],a[2],a[4],a[3]);
and and5(w[4],a[1],a[4],a[5]);
and and6(w[5],a[1],a[3],a[5]);
and and7(w[6],a[1],a[4],a[3]);
and and8(w[7],a[2],a[1],a[5]);
and and9(w[8],a[2],a[4],a[1]);
and and10(w[9],a[2],a[1],a[3]);

or or1(y,w[0],w[1],w[2],w[3],w[4],w[5],w[6],w[7],w[8],w[9]);


endmodule
