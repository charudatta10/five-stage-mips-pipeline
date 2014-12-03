`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:03:21 11/13/2014 
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
module Control(opcode, funct, ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite, ALUControl); 
input [5:0] opcode; // 6-bit operation code
input [5:0] funct;  // 6-bit function code from the instruction
						  // least significant 6 bits of an instruction
output ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite; // Output control lines
output [2:0] ALUControl; // 3-bit control for the ALU that specifies the operation

wire [1:0] ALUOp;

ControlOld Cntrl(opcode, ALUSrc, ALUOp, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite);
ALUOpToALUControl ALUOp2Ctrl(ALUOp, funct, ALUControl);

endmodule
