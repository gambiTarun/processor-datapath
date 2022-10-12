`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:19:43 06/26/2020 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(
    input [7:0] PC,
    input Reset,
    output [7:0] InstructionCode
    );
reg [7:0]  Mem[35:0]; //Byte addressable memory with 36 locations
	 
//For Normal Memory Read
assign InstructionCode = Mem[PC];
//Reads Instruction Specified by PC
	 
always@(Reset)
begin

if(Reset==1)
begin
	$readmemh("Test.mem",Mem);
end

end
endmodule
