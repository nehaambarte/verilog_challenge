`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 00:35:47
// Design Name: 
// Module Name: edge_detector_tb
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


module edge_detector_tb();
reg clk;
reg reset;
reg a_i;
wire rising_edge_o;
wire falling_edge_o;

edge_detector detector(.clk(clk),.reset(reset),.a_i(a_i),.rising_edge_o(rising_edge_o),.falling_edge_o(falling_edge_o));

  initial 
   begin 
    clk = 1'b0;
    forever #10 clk = ~clk;
   end
   
   
  initial
   begin
    reset <= 1'b1;
    a_i <= 1'b1;
    @(posedge clk);
    
    reset <= 1'b0;
    @(posedge clk);
    
    for (integer i=0; i<64; i=i+1) 
    begin
      a_i <= $random%2;
      @(posedge clk);
    end
  end

endmodule
