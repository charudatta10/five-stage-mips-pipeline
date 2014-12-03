`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:16 10/23/2014 
// Design Name: 
// Module Name:    OneBitALU 
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
module OneBitALU(a, b, cin, less, op, result, cout, g, p, set);
	input a, b, cin;
	input less;
	input [2:0] op;
	output result;
	output cout;
	output g, p;
	output set;

	wire b_n;
	assign b_n = ((~op[2]) & b) + ((~b) & op[2]);

	wire g_n, p_n;
	assign g_n = (b_n & a);
	assign p_n = (a + b_n);
	assign g = g_n;
	assign p = p_n;
	
	
	wire set_n;
	OneBitAdded OneBitAdded_1(a, b_n, cin, set_n, cout);
	assign set = set_n;

	assign result = ((~op[1]) & (~op[0]) & g_n) | ((~op[1]) & op[0] & p_n) | (op[1] & (~op[0]) & p_n) | (op[1] & op[0] & less);

endmodule

module OneBitAdded(a, b, cin, s, cout);
	input a, b, cin;
	output s, cout;
	
	assign s = ((~a) & b & (~cin)) | ((~a) & (~b) & cin) | (a & b & cin) | (a & (~b) & (~cin));
	assign cout = ((~a) & b & cin) | (a & (~b) & cin) | (a & b & (~cin)) | (a & b & cin);
endmodule
