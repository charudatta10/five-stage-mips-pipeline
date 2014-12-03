`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:26:45 10/24/2014 
// Design Name: 
// Module Name:    OverflowDetection 
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
module OverflowDetection(cin, cout, overflow);
	input cin, cout;
	output overflow;
	
	assign overflow = ((~cin) & cout) + (cin & (~cout));

endmodule
