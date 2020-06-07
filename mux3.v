`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/11/2020 07:13:14 PM
// Design Name: 
// Module Name: mux3
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


module mux3(rt_out,sign_out,sel,out);
input[31:0]rt_out,sign_out;
input sel;
output reg[31:0] out;
always@(*)
begin
if(sel==0)
out=rt_out;
else
out=sign_out;
end

endmodule
