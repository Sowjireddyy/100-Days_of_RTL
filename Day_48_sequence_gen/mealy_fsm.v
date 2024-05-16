`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.05.2024 20:44:27
// Design Name: 
// Module Name: mealy_fsm
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


module mealy_fsm(input clk,rst,data_in, output reg detected);

 // State definitions
 localparam IDLE = 2'b00;
 localparam STATE_1 = 2'b01;
 localparam STATE_2 = 2'b10;
 localparam STATE_3 = 2'b11;
 reg [1:0] state, next_state;

 // State transition and output logic
 always @(posedge clk) 
  begin
    if (rst) 
	 begin
      state <= IDLE;
      detected <= 0;
     end
	 
    else
     begin
      state <= next_state;
   end
  end
 // Next state and output logic
  always @(*) 
   begin
    next_state = state;
    case (state)
        IDLE: begin
            if (data_in) 
             next_state = STATE_1;
            else 
             next_state = IDLE; 
        end
        STATE_1: begin
            if (~data_in) 
             next_state = IDLE;
            else 
             next_state = STATE_2;
        end
        STATE_2: begin
            if (data_in)
              next_state = STATE_3;
            else 
             next_state = IDLE;
        end
        STATE_3: begin
            if (~data_in) 
             next_state = IDLE;
            else 
             next_state = STATE_1;
        end
        default: next_state = IDLE;
    endcase
    
    assign detected = (state==3) ? 1:0;
  end
   
 endmodule
 
 
