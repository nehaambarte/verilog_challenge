`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 10:16:41
// Design Name: 
// Module Name: day_01
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


module day_01(
output reg Y,
input I0,I1,
input select
    );
  always@(select,I0, I1)
  begin
  Y<=1'bx;
  if(select==1'b1)
  begin
  Y<=I1;
  end
  else
  begin
  Y<=I0;
  end
  end  
    
endmodule
