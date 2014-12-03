`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:03:44 11/13/2014 
// Design Name: 
// Module Name:    ALUcontrol 
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
module ALUOpToALUControl(ALUOp, Funct, ALUControl);
input [1:0] ALUOp;
input [5:0] Funct;
output reg [2:0] ALUControl; 
//00 lw&&sw
always @ (ALUOp, Funct) begin
	case(ALUOp)
		2'b 00: ALUControl = 3'b 010;
		2'b 01: ALUControl = 3'b 110;
		2'b 10: begin
			case(Funct)
				6'b 100000: ALUControl = 3'b 010;
				6'b 100010: ALUControl = 3'b 110;
				6'b 100100: ALUControl = 3'b 000;
				6'b 100101: ALUControl = 3'b 001;
				6'b 101010: ALUControl = 3'b 111;
			endcase 
			end
	endcase	
	end		
	
endmodule
