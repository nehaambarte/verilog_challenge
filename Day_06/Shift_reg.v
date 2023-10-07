`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neha Ambarte
// 
// Create Date: 05.10.2023 22:41:14
// Design Name: 
// Module Name: Shift_reg
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

//Design and Verify simple 4bit serial in serial out shift register .

module Shift_reg(
input wire clk,
input wire reset,
input wire sr_i,
output wire [3:0]sr_o
    );
   
reg [3:0]reg_out;
always @(posedge clk)
begin 
if(reset == 1'b1)
begin 
reg_out <= 4'b0000;
end
else
begin 
reg_out <= {reg_out [2:0] ,sr_i};
end 
end
assign sr_o = reg_out[3:0] ;

endmodule
