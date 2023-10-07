`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 00:15:40
// Design Name: 
// Module Name: Day_08
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

//Day_08 : Design and verify a parameterized binary to one-hot converter

module Day_08 #(parameter N =4)(
input wire [N-1:0] b_in ,
output [2**N-1 :0]one_hot_w
    );
assign one_hot_w = ( 1 << b_in);
endmodule
