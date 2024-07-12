`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.07.2024 22:30:50
// Design Name: 
// Module Name: top
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

module top();
class duv_cm;
logic clk;
rand logic[7:0]address;
rand logic [2:0] opcode;
rand logic valid;
constraint c1 {address inside{[0:255]};}
covergroup cm_cg;
op:coverpoint opcode;
add:coverpoint address;
opxadd:cross op,add;
endgroup
function new();
cm_cg = new;
endfunction
endclass
duv_cm h1;
initial
begin
h1 = new() ;
repeat(200)

begin
assert(h1.randomize());
h1.cm_cg.sample();
end
end
endmodule

