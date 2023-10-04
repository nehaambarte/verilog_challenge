`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 21:06:25
// Design Name: 
// Module Name: Day_03
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


module Day_03(
input wire clk,reset ,a_i,
output  rising_edge_o,falling_edge_o);

reg q_prev;
always @(posedge clk )
begin 

if(reset==1'b1)
q_prev <=1'b0;

else
q_prev <= a_i;
end


// rising edge 
assign rising_edge_o = (a_i) && (~q_prev);
//falling edge 
assign falling_edge_o = (~a_i) &&( q_prev);


endmodule

    



