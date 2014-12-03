`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:37:20 10/24/2014 
// Design Name: 
// Module Name:    FourBitALU 
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
module FourBitALU(a, b, op, result, cout, G, P, set, overflow);
	input [3:0] a, b; // Inputs to the one-bit ALU.
	input [2:0] op; // 3-bit operation code. op[2] is the "binv". op[0] is the
							// least significant bit.
	output [3:0] result; // The result of the ALU (depends on the operation that
								// is chosen)
	output cout;
	output G, P;
	output set;
	output overflow;

endmodule
