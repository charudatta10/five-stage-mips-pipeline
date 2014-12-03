`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:06 11/04/2014 
// Design Name: 
// Module Name:    ALU32Bit 
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
module ALU32Bit(a, b, op, result, set, zero, overflow );
	input [31:0] a, b;
	input [2:0] op;
	output[31:0] result;
	output set;
	output zero;
	output overflow;
	
	wire cout_0, cout_1, less;
	wire g0, g1, p0, p1;
	wire zero_0, zero_1;
	
	wire dud;
	wire z = 1'b 0;
	
	ALU16Bit Sixteenbit_0(a[15:0], b[15:0], z, z, op, result[15:0], cout_0, dud, zero_0, g0, p0, dud);   //(a, b, cin, less, op, result, cout, set, zero, g, p, overflow)
	ALU16Bit Sixteenbit_1(a[31:16], b[31:16], cout_0, z, op, result[31:16], cout_1, set, zero_1, g1, p1, dud);

	assign zero = zero_0 & zero_1;
	
	OverflowDetection OverflowDetection_0(cout_0, cout_1, overflow);

endmodule
