`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:52 06/25/2020 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(
    input [2:0] ReadRegNum,
    input [2:0] WriteRegNum,
    input [7:0] WriteData,
    output [7:0] ReadData,
    input RegWrite,
    input clk,
    input Reset
    );
reg [7:0] reg_mem [7:0];

assign ReadData = reg_mem[ReadRegNum];

always@(posedge clk, posedge Reset)
begin

	//If Reset bit is zero preload the register with default values
	if(Reset == 1)
	begin
		reg_mem[0]= 0;
		reg_mem[1]= 1;
		reg_mem[2]= 2;
		reg_mem[3]= 3;
		reg_mem[4]= 4;
		reg_mem[5]= 5;
		reg_mem[6]= 6;
		reg_mem[7]= 7;
	end

	else if(RegWrite == 1)
	begin
		reg_mem[WriteRegNum] = WriteData;
	end
	
end
endmodule
