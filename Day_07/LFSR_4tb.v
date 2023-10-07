`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 16:03:52
// Design Name: 
// Module Name: LFSR_4tb
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


module LFSR_4tb();
reg clk;
reg reset;
wire [3:0]lfsr_o;

LFSR_4 LFSR(.clk(clk),.reset(reset),.lfsr_o(lfsr_o));

always
begin
clk = 1'b0;
forever #10 clk = ~clk; 
end

initial
begin

    reset = 1;
    #10 reset = 0;
    #100;
    $finish;
    end

endmodule
