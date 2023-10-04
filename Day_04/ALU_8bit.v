`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2023 21:46:45
// Design Name: 
// Module Name: ALU_8bit
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


module ALU_8bit(
input [7:0]a_i,
input[7:0]b_i,
input[2:0]op_i,
output reg[7:0]alu_o
    );


always @(*)
begin
case(op_i)
3'b000: alu_o = (a_i + b_i ); // addition
3'b001: alu_o = (a_i - b_i); //
3'b010: alu_o = a_i[7:0] << b_i[2:0] ; //left shift of b[2:0]
3'b011: alu_o = a_i[7:0] >> b_i[2:0] ; //right shift of b[2:0]
3'b100: alu_o = a_i & b_i ; //AND operation
3'b101: alu_o = a_i | b_i ;//OR operation
3'b110: alu_o = a_i ^ b_i ;//XOR operation
3'b111: 
begin
        if(a_i == b_i)
        begin
        alu_o = 8'b00000001;
        end
        else
        begin
        alu_o = 8'b00000000;
        end
        
    end    
    default:alu_o =8'b00000000;
endcase
end
endmodule