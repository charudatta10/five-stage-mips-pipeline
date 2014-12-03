`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:15 11/04/2014 
// Design Name: 
// Module Name:    Mux5Bit2To1 
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
module Mux5Bit2To1(a, b, op, result);
	input [4:0] a, b;
	input op;
	output reg [4:0] result;
	
	always @(a, b, op) begin
	if (op) assign result = b;
	else assign result = a;
	end


endmodule
