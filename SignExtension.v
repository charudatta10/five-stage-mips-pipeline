`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:07:54 11/04/2014 
// Design Name: 
// Module Name:    SignExtension 
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
module SignExtension(a, result);
	input [15:0] a;
	output reg [31:0] result;	
	always @(a) begin
	result[15:0] = a[15:0];
	if (a[15]) result[31:16] <= 16'b 1111111111111111;
	else result[31:16] <= 16'b 0000000000000000;	
	end

endmodule
