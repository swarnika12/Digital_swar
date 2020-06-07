`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/23/2020 09:18:17 AM
// Design Name: 
// Module Name: RISC_datapath
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


module RISC_datapath(clk,rst,wr1,out,instruction,in,alu_cont,wr2,rd2,sel2,sel3,sel4,alu_out,cs,da_out,dat_out,branch,sel5,rs_data,rt_data,sign_extend);
wire[31:0]sign_out,ALU_in;
output[31:0]rs_data,rt_data;
output[31:0]out;
input clk,rst;
output wr1,wr2,rd2,sel2,sel3,sel4,cs,branch,sel5;
wire[4:0]reg_wrrd;
output[3:0]alu_cont;
wire[1:0]alu_op;
output[31:0] alu_out,da_out,dat_out;
input[31:0]in;
output[15:0] sign_extend;
assign sign_extend=instruction[15:0];
output[31:0]instruction;
wire z;
//wire [5:0]func_field,opcode;
//wire[15:0]sign_extend;
wire[31:0]out32,out1,out2;

PC t2(clk,rst,in,out);
add t12(out,out1);
inst_mem t3(clk,out,instruction);
RISC_Controller t13(instruction[31:26],alu_op,wr1,wr2,rd2,sel2,sel3,sel4,cs,branch,sel5);
mux2 t5(instruction[20:16],instruction[15:11],sel2,reg_wrrd);
register1 t4(instruction[20:16],instruction[25:21],reg_wrrd,rt_data,rs_data,dat_out,clk,wr1,sel2);
sign_ext t6(instruction[15:0],sign_out);
shift_left t1(out32,sign_out);
add2 t14(out1,out32,out2);
mux3 t7(rt_data,sign_out,sel3,ALU_in);
ALU_control t8(alu_op,instruction[5:0],alu_cont);
ALU t9(rs_data,ALU_in,alu_out,alu_cont,z);
and12 t15(z,branch,sel5);
mux4 t16(out1,out2,sel5,in);
data_memory t10(clk,alu_out,rt_data,da_out,wr2,rd2,cs);
mux4 t11(alu_out,da_out,sel4,dat_out);
endmodule
