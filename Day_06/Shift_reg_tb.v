`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 22:46:03
// Design Name: 
// Module Name: Shift_reg_tb
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


module Shift_reg_tb();
reg clk,reset=0,sr_i=0;
wire [3:0]sr_o;

Shift_reg SR(.clk(clk),.reset(reset),.sr_i(sr_i),.sr_o(sr_o));

always 
begin
clk =1'b0;
forever #10 clk =~clk;
end

  initial 
  begin
    reset = 1;
    sr_i = 0;
 
 #10
 sr_i = 1;
 reset = 0;
   
  
    //$finish;
end
endmodule
