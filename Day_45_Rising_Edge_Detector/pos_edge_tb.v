`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.05.2024 21:19:48
// Design Name: 
// Module Name: pos_edge_tb
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


module pos_edge_tb();
  reg D,clk,rst;
  wire Detector;
  
/////Instantiation
 edge_detector DUT(clk,rst,D,Detector);
 
////Clock Generation
initial 
 begin
  clk = 1'b0;
forever
#5 clk = ~clk; 
end

///initialization
 task initalize();
 begin
  D = 0;
  rst = 0;
 end 
 endtask 
 
////Reset 
 task reset();
 begin
	@(negedge clk)
	 rst = 1'b1;
	@(negedge clk)
     rst = 1'b0;
 end
 endtask
 
task d_input(input K);
 begin
   @(posedge clk)
    #3 D = K;
 end
endtask

////Stimulus
initial 
 begin
  initalize;
  reset;
  d_input(1'b1);
  #20;
  d_input(1'b0);
 #20;
 d_input(1'b1);
 
#50 $finish;

end
endmodule 
  
  
  
  
  

   
