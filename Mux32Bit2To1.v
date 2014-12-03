`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:02:01 11/04/2014 
// Design Name: 
// Module Name:    Mux32Bit2To1 
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
module Mux32Bit2To1(a, b, op, result);
	input [31:0] a, b;
	input op;
	output reg [31:0] result;
	
	always @(a, b, op) begin
	if (op) assign result = b;
	else assign result = a;
	end
	
endmodule
