`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.06.2024 21:29:12
// Design Name: 
// Module Name: main
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
module test();
class transaction;
	 rand  bit[15:0]pktlength;
	constraint undersize{pktlength<=16'd64;}
endclass
transaction trans = new;
initial 
begin
		int success;
         	if(trans.pktlength.rand_mode()>0)
		begin
		trans.pktlength.rand_mode(1);
		for(int i=0; i<16;i++)
         	begin
	         success =trans.randomize();
		$display("%d" , trans.pktlength);
		end	
         	trans.undersize.constraint_mode(1);
		for(int i=0; i<16; i++)
	        begin
			success = trans.randomize();
			$display("%d", trans.pktlength);		
end
end
end
endmodule

