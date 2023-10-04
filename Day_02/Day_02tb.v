`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.10.2023 01:42:53
// Design Name: 
// Module Name: Day_02tb
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


module Day_02tb;
wire q_norst_o , q_syncrst ,q_asyncrst ;
reg d_i , clk,reset;

Day_02 Dff(.clk(clk),.reset(reset),.d_i(d_i),.q_norst_o(q_norst_o),.q_syncrst_o(q_syncrst_o),.q_asyncrst_o(q_asyncrst_o));

initial
begin
clk =1'b0;
forever #5 clk = ~clk;
end

initial 
begin 
// synchronous behaviour
reset =1'b0;
d_i =1'b0;
#10
 d_i =1'b1;
 reset =1'b0; 
#10
 d_i = 1'b0;
 reset =1'b1;
#10
d_i =1'b0;
reset =1'b1;
#10
reset =1'b0;
d_i =1'b1;
 
//for asynchronous behaviour 
end
endmodule