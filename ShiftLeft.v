`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:09:04 06/26/2020 
// Design Name: 
// Module Name:    ShiftLeft 
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
module ShiftLeft(
    input [7:0] ReadData,
    input [2:0] Shamt,
    output reg [7:0] ShiftLeft
    );

always@(*)
begin
	ShiftLeft = ReadData<<Shamt;

end
endmodule
