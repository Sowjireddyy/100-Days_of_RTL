`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2024 21:10:44
// Design Name: 
// Module Name: interface_clocking_block_top
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


module interface_clocking_block_top(

    );
    interface count_12_if(input bit clock);
    logic reset,load,mode;
    logic [3:0] data_in;
    logic [3:0] data_out;

    clocking wr_drv_cb@(posedge clock);
            output reset,load,mode;
            output data_in;
    endclocking:wr_drv_cb

    clocking wr_mon_cb@(posedge clock);
            input reset, load, mode;
            input data_in;
    endclocking:wr_mon_cb

   clocking rd_mon_cb@(posedge clock);
      input data_out;
   endclocking: rd_mon_cb

   modport WR_DRV_MP (clocking wr_drv_cb);
   modport WR_MON_MP (clocking wr_mon_cb);
   modport RD_MON_MP (clocking rd_mon_cb);

endinterface:count_12_if //count_12_if

endmodule
