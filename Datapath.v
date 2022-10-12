`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:44 06/25/2020 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(
    input clk,
    input Reset
    //output [1:0] OP
    );

wire Cntrl;
wire [1:0] OP;
wire [7:0] Instr;
wire [2:0] WriteRegNum;
wire [7:0] WriteData;
wire [2:0] ReadRegNum;
wire [7:0] ReadData;
wire [2:0] Imm;
wire [7:0] SignExt;
wire [7:0] ShiftLeft;
wire Reg_Write;

assign Reg_Write = 1;

InstructionFetch IF(.clk(clk),.Reset(Reset), .InstructionCode(Instr));
assign OP = Instr[7:6];
assign ReadRegNum = Instr[5:3];
assign WriteRegNum = Instr[5:3];
assign Imm = Instr[2:0];

RegisterFile Rfile(
	.ReadRegNum(ReadRegNum),
	.WriteRegNum(WriteRegNum),
	.WriteData(WriteData),
	.ReadData(ReadData),
	.RegWrite(Reg_Write),
	.clk(clk),
	.Reset(Reset)
	);
	
SignExt SE(
	.In(Imm),
	.Out(SignExt)
	);
	
ShiftLeft SL(
	.ReadData(ReadData),
	.Shamt(Imm),
	.ShiftLeft(ShiftLeft)
	);
	
assign Cntrl = (OP==2'b00)? 1'b0 : 1'b1;
assign WriteData = (Cntrl==1'b0)? ShiftLeft : SignExt;

endmodule

//X = 3
//Y = 2
//Z = 4

//li R3, 1
//sll R3, 2
//li, R2, 4
//sll R2, 4
//sll R4, 2

//11 011 001
//00 011 010
//11 010 100
//00 010 100
//00 100 010

//Test.mem contents:
//D9
//1A
//D4
//14
//22

