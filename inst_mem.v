










`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: +



// 
// Create Date: 01/08/2020 10:54:15 PM
// Design Name: 
// Module Name: inst_mem
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


module inst_mem(clk,addr,instruction);
input clk;
input [31:0]addr;

//output reg[15:0]sign_ext;

reg[31:0]mem[0:31];
output reg[31:0]instruction;
initial
begin
mem[0]=32'b000000_00001_00010_00011_00000_100000;//ADD
mem[4]=32'b000000_00101_00100_00110_00000_100010;//SUB
mem[8]=32'b000000_01000_01001_01010_00000_100100;//AND
mem[12]=32'b000000_00111_01011_01100_00000_100101;//OR
mem[16]=32'b000000_11111_00001_01010_00000_100110;//EXOR
mem[20]=32'b100011_01010_01100_00000_00000_000001;//LW
mem[24]=32'b101011_00101_00100_00000_00000_000101;//SW
 end                                       
always@(*)
begin
instruction =mem[addr];

end
endmodule
