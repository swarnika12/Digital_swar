`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/08/2020 11:12:35 PM
// Design Name: 
// Module Name: PC
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


module PC(clk,rst,in,out);
input clk,rst;
input[31:0]in;

output reg[31:0]out;

always@(posedge clk,posedge rst)
begin
 if(rst)
 out<=32'd0;
 else 
 out<=in;
 end 
 endmodule
