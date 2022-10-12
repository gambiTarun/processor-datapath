`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:25:19 06/26/2020
// Design Name:   Datapath
// Module Name:   C:/Users/Tarunbir Singh/Dropbox/Study/Comp Arch/assign3/assign3/tb_datapath.v
// Project Name:  assign3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_datapath;

	// Inputs
	reg clk;
	reg Reset;

	// Instantiate the Unit Under Test (UUT)
	Datapath uut (
		.clk(clk), 
		.Reset(Reset)
	);

	initial	begin
		// Initialize Inputs
		clk <= 0;
		#160;
		$finish;
	end
	
	initial	begin
		// Initialize Inputs
		Reset = 1;
		#20
		Reset = 0;
		#110
		Reset = 1;
		#20
		$finish;
	end
	
	always
	begin
	#10 clk = ~clk;
	end
      
endmodule

