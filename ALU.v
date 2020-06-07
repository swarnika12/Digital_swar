`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2020 06:25:21 PM
// Design Name: 
// Module Name: ALU
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


module ALU(in1,in2,out,alu_cont,z);
input[31:0]in1,in2;
input[3:0]alu_cont;
output reg[31:0]out;
output z;
always@(*)
begin
case(alu_cont)

4'd2:   out<=in1+in2;
4'd6:   out<=in1-in2;
4'd0:   out<=in1&in2;
4'd1:   out<=in1|in2;
4'd3:   out<=in1^in2;
default:  out<=in1+in2;
 
endcase
end
assign z=(out==0)?1'b1:1'b0;
endmodule
