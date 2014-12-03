`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:26:47 11/13/2014 
// Design Name: 
// Module Name:    Control 
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
module ControlOld(opcode, ALUSrc, ALUOp, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite);
input [5:0] opcode; // 6-bit operation code
output reg ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite; // Output control lines
output reg [1:0] ALUOp; // 2-bit intermediate output for controlling ALU


//ALUOP:: 00 = lw, sw; 01 = beq; 10 = arithmetic; 11 = Jump
always @(opcode) begin
ALUSrc = 0;  RegDst = 0;  MemWrite = 0;   MemRead = 0;  Beq = 0;   Bne = 0;  Jump = 0;  MemToReg = 0;  RegWrite = 0;
case(opcode)
6'b 000100: //beq
	begin
	  ALUOp = 2'b 01;
	  Beq = 1; 
	end
6'b 000101: begin//bne
	  ALUOp = 2'b 01;
	  Bne = 1; 
	end
6'b 000010: begin//j
	  ALUOp = 2'b 11;
	  Jump = 1;
	end
6'b 100011: begin//lw
	  ALUOp = 2'b 00;
	  ALUSrc = 1;   MemToReg = 1;   RegWrite = 1;   MemRead = 1;
	end
6'b 101011: begin //sw
	  ALUOp = 2'b 00;
	  ALUSrc = 1;   MemWrite = 1;
	end
6'b 000000: //r-type
	begin
	  ALUOp = 2'b 10;
	  RegDst = 1;   RegWrite = 1;
	end
endcase	
end
endmodule
