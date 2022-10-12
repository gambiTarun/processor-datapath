`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:33 06/25/2020 
// Design Name: 
// Module Name:    InstructionFetch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module InstructionFetch(
    input clk,
    input Reset,
    output [7:0] InstructionCode
    );

reg [7:0] PC;

InstructionMemory abc(
	.PC(PC),
	.Reset(Reset),
	.InstructionCode(InstructionCode)
);

always@(posedge clk, posedge Reset)
begin

if(Reset==1)
PC<=0;

else
PC<=PC+1;

end
endmodule

