`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 12:37:55 PM
// Design Name: 
// Module Name: RISC_Controller
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


module RISC_Controller(opcode,alu_op,wr1,wr2,rd2,sel2,sel3,sel4,cs,branch,sel5);
input[5:0]opcode;
output reg wr1,rd2,sel2,sel3,sel4,wr2,cs,branch,sel5;
output reg[1:0]alu_op;
always@(*)
case(opcode)
6'b000000 : begin // R - type(ADD)
          
           alu_op=2'b00;
           wr1=1;
           wr2=0;
           sel2=1;
           sel3=0;
           sel4=0;
           rd2=0;
           cs=0;
           branch=0;
           sel5=0;
           end
6'b100011:begin//lw
          alu_op=2'b10;
          wr1=1;
          wr2=0;
          sel2=0;
          sel3=1;
          sel4=1;
          rd2=1;
          cs=1;
          branch=0;
          sel5=0;
          end
6'b101011:begin//sw
          alu_op=2'b10;
          wr1=0;
          wr2=1;
          sel2=1'b0;
          sel3=1;
          sel4=1'b1;
          rd2=0;
          branch=0;
          sel5=0;
          cs=1;end
6'b100001: begin
           alu_op=2'b01;
           wr1=1;
           rd2=0;
           cs=0;
           sel2=0;
           sel3=1;
           sel4=0;
           sel5=0;
           branch=0;
           wr2=0;end

default: begin 
         
          alu_op=2'b00;
           wr2=0;
           sel2=0;
           sel3=0;
           sel4=0;
           rd2=0;
           cs=0;
           branch=0;
           sel5=0;
        
          wr1=0;end
  endcase

endmodule
