`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 00:14:35
// Design Name: 
// Module Name: ALU_8bit_tb
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


module ALU_8bit_tb();
reg [7:0]a ;
reg [7:0]b;
reg [2:0]op;
wire [7:0]out;

ALU_8bit ALU(.a_i(a),.b_i(b),.op_i(op),.alu_o(out));
initial 
begin

a=8'b00000011;
b=8'b00000001;
op = 3'b000;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b001;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b010;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b011;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b100;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b101;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b110;
#20

a=8'b00000011;
b=8'b00000001;
op = 3'b111;
#20

$display("a = %b ,b =%b ,opcode = %b,out =%b",a,b,op,out);

end
endmodule
