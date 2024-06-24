`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.06.2024 21:23:02
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

class driver;
task send(input string s);
sem.get(1);
$display("%s",s);
sem.put(1);
$display("%s",s);

endtask
endclass

driver dr[2];
semaphore sem;

initial
begin

dr[0] = new();
dr[1] = new();
sem = new(1);
repeat(5)
begin
fork

dr[0].send("driver 1");
dr[1].send("driver 2");
join

end
end

endmodule
