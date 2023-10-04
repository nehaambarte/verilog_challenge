`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 21:07:51
// Design Name: 
// Module Name: Day_03tb
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


module Day_03tb();
reg clk,reset,a_i;
wire falling_edge_o,rising_edge_o;

Day_03 RFD(.clk(clk),.reset(reset),.a_i(a_i),.falling_edge_o(falling_edge_o),. rising_edge_o(rising_edge_o));

initial
begin
 // clock genration
 clk =1'b0;
 forever #10 clk = ~clk ; 
 end
 
 initial begin
 reset =1'b0;
 a_i = 1'b0;
 #20 
reset =1'b0;
a_i = 1'b1;
 #20 
a_i = 1'b0;
reset =1'b0;
 #20
 a_i = 1'b0;
reset =1'b0;
#20
 a_i = 1'b1;
reset =1'b1;
#20
 a_i = 1'b0;
reset =1'b0;
 end


endmodule
