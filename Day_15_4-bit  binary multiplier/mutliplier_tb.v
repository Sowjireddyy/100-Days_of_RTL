`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2024 19:54:30
// Design Name: 
// Module Name: mutliplier_tb
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


module multiplier_tb();
reg [3:0] a,b;
wire [7:0] product;


multiplier dut(a,b,product);

initial
begin
#0  a = 4'b0111; b = 4'b1110;
#10 a = 4'b0010; b = 4'b1010;
#10 a = 4'b0101; b = 4'b0001;
#10 a = 4'b0101; b = 4'b0111;
#10 a = 4'b0101; b = 4'b0101;
#10 a = 4'b0001; b = 4'b0001;
#10 a = 4'b0100; b = 4'b0111;

end

//display variables
initial
begin
$monitor ("A = %b, B = %b, Product = %b", a, b, product);
#100 $finish;
end 

 endmodule
