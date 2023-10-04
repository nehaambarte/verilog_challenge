`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 00:34:52
// Design Name: 
// Module Name: edge_detector
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


module edge_detector(
input clk,
input reset,
input a_i,
output rising_edge_o,
output falling_edge_o
    );
    
   reg q_prev;
   always @(posedge clk)
    begin
     if(reset == 1'b1)
       q_prev <= 1'b0;
     else
       q_prev <= a_i;
    end 
    
    //Rising Edge -> 0 to 1
    assign rising_edge_o = (a_i)&&(~q_prev);
    
    //Falling Edge -> 1 to 0
    assign falling_edge_o = (~a_i)&&(q_prev);
    
endmodule
