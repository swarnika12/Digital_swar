`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2020 07:19:50 PM
// Design Name: 
// Module Name: data_memory
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


module data_memory(clk,addr_ALU,rt_data,data_out,wr,rd,cs);
input clk,rd,wr,cs;
input[31:0]addr_ALU,rt_data;
 integer i;

output reg[31:0]data_out;
reg[31:0]mem[0:1023];
initial
begin
for(i=0;i<1024;i=i+1)
mem[i]=i;
end

always@(posedge clk)begin
if(wr && cs && !rd)
 mem[addr_ALU]=rt_data;
end//writing 
 always@(posedge clk)begin                                            
 if(rd && cs && !wr)
 data_out=mem[addr_ALU];end//reading
endmodule
