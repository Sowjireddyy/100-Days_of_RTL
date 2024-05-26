`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 20:22:59
// Design Name: 
// Module Name: packed_array
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


module packed_array();
bit [3:0][7:0] m_data;

initial
  begin
    m_data=32'hface_cafe;
    $display("m_data=0X%h",m_data);
    for(int i=0;i<$size(m_data);i++)
       $display("m_data[%0d]=%0b (0X%0h)",i,m_data[i],m_data[i]);
  end
  
endmodule
