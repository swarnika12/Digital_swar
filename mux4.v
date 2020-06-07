`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2020 07:40:39 PM
// Design Name: 
// Module Name: mux4
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


module mux4(ALU_out,data_out,sel,out);
input[31:0] ALU_out,data_out;
input sel;
 output reg[31:0] out;
always@(*)
begin
if(sel==0)
out=ALU_out;
else
out=data_out;
end

endmodule
