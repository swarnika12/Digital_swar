`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2020 04:54:36 PM
// Design Name: 
// Module Name: register1
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


module register1(reg_rt,reg_rs,reg_wrrd,rt_out,rs_out,rd_data,clk,write_data,sel);
input[4:0] reg_rt,reg_rs,reg_wrrd,sel;
input[31:0]rd_data;
input clk,write_data;
output [31:0]rs_out;
output[31:0]rt_out;
wire[31:0]rt_out2;
assign rt_out2=rt_out;
reg[31:0]Regfile[31:0];
integer i;
initial
begin

for(i=0;i<32;i=i+1)
Regfile[i]=i;
end
assign rs_out=Regfile[reg_rs];//Reading
assign rt_out=Regfile[reg_rt];
always@(posedge clk)
begin
if(write_data==1)
Regfile[reg_wrrd]=rd_data;//Writing in the registers
end 
endmodule
