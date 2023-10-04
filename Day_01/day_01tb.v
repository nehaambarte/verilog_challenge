`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2023 10:18:51
// Design Name: 
// Module Name: day_01tb
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

module day_01tb();

reg I0,I1;
reg select;
wire Y;
day_01 mux(.Y(Y),.I0(I0),.I1(I1),.select(select));

initial
begin
select=1'b0;
I0=8'b0;
I1=8'b0;
#50
select=1'b0;
I0=8'b0;
I1=8'b1;
#50
select=1'b1;
I0=8'b0;
I1=8'b1;
#50
select=1'b1;
I0=8'b0;
I1=8'b1;
end

initial 
begin
$display("select= %b,I0=%b,I1=%b",select,I0,I1);
end

endmodule