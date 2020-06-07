`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/18/2020 06:55:20 PM
// Design Name: 
// Module Name: TB_RISC
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


module TB_RISC();
reg clk,rst;
wire[31:0]in,out;
wire wr1,wr2,rd2,sel2,sel3,sel4,cs,branch,sel5;
wire[31:0]dat_out,da_out,alu_out;
wire[3:0]alu_cont;
wire[15:0]sign_extend;
wire[31:0]instruction,rs_data,rt_data;
RISC_datapath t1(clk,rst,wr1,out,instruction,in,alu_cont,wr2,rd2,sel2,sel3,sel4,alu_out,cs,da_out,dat_out,branch,sel5,rs_data,rt_data,sign_extend);
always
#5 clk=~clk;
initial
begin
clk=1;rst=1;
#10 rst=0;

#200 $finish;end
endmodule
