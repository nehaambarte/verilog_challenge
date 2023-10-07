`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2023 00:21:48
// Design Name: 
// Module Name: Day_08_tb
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


module Day_08_tb();
reg [3:0]b_in;
wire [2**4 -1:0] one_hot_w;

Day_08 #(4) OHC(.b_in(b_in),.one_hot_w(one_hot_w));

initial
begin
for(b_in =0 ;b_in <= 2** 4 ;b_in=b_in+1)begin
#10;
end
end

endmodule
