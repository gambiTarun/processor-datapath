`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:01:00 06/26/2020 
// Design Name: 
// Module Name:    SignExt 
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
module SignExt(
    input [2:0] In,
    output reg [7:0] Out
    );

always@(*)
begin
	Out = {{5{In[2]}},In};
	
end
endmodule
