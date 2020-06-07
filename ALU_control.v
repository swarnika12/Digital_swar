`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/19/2020 12:52:55 PM
// Design Name: 
// Module Name: ALU_control
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


module ALU_control(ALUop,func_field,ALU_cont);
input[5:0]func_field;
input[1:0]ALUop;
output reg[3:0]ALU_cont;
wire[7:0]Alu_in;

assign Alu_in={ALUop,func_field};

always@(Alu_in)
begin
case(Alu_in)
8'b00100000:ALU_cont=4'b0010;
8'b00100010:ALU_cont=4'b0110;
8'b00100100:ALU_cont=4'b0000;
8'b00100101:ALU_cont=4'b0001;
8'b10000001:ALU_cont=4'b0010;
8'b10000101:ALU_cont=4'b0010;
8'b00100110:ALU_cont=4'b0011;
//8'b01001111:ALU_cont=4'b0010;

default:ALU_cont=4'bxxxx;
endcase
end
endmodule
