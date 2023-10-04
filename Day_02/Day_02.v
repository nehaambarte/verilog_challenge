`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 01:34:36
// Design Name: 
// Module Name: Day_02
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

//Day 02 : Design and verify types of D flip flops
module Day_02(
input wire clk,reset,d_i,
output reg q_norst_o,
reg q_syncrst_o,
reg q_asyncrst_o );

always @(posedge clk)
begin
q_norst_o <= d_i;
end

// for synchronous type 
always @(posedge clk )
begin 
if( reset == 1'b1)
begin
q_syncrst_o <= 1'b0;
end
else 
begin 
q_syncrst_o <= d_i;
end
end

// for asynchronous 

always @(posedge clk or posedge reset)
begin
if(reset ==1'b1)
begin
q_asyncrst_o <= 1'b0;
end
else 
begin
q_asyncrst_o <= d_i;
end
end

endmodule
