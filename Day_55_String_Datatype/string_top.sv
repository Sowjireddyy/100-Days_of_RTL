`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 13:20:57
// Design Name: 
// Module Name: string_top
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


module string_top();

string str;
  
  initial
   begin  
	str = "HELLO";
	
	///To Lower
	str = str.tolower();
	$display("str = %s", str);
	///To Upper
	str = str.toupper();
	$display("str = %s", str);
	///add something to the string
	disp($sformatf("_", "World",str));
	$display("str = %s", str);
	///put somthing in the string
	 str.putc(5,"-");
	$display("str = %s",str);
	
	end
	task disp(string s);
	 $display("t =%0t,%0s",$time,s);
    endtask
    
endmodule
