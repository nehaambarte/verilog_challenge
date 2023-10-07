`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2023 16:03:04
// Design Name: 
// Module Name: LFSR_4
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

//Day 07 :Design and Verify a 4 bit linear feedback shift register 
//where the bit[0] 0f the register is driven by the XOR of the LFSR register bit[1] and bit[3].

module LFSR_4(
input wire clk,
input wire reset,
output wire[3:0] lfsr_o );
reg[3:0]lfsr_reg;

always @(posedge clk)
begin
if(reset)
begin
lfsr_reg <= 4'b111;
end
else
begin
//feedback logic
lfsr_reg[0] <= (lfsr_reg[1] ^ lfsr_reg[3]);

//shifting operation
lfsr_reg  <= {lfsr_reg[2:0],lfsr_reg[0]};

end
end
assign lfsr_o = lfsr_reg;

endmodule
