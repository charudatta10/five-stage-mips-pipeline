`timescale 1ns / 1ps

module TestBench();
reg clk;
reg [31:0] Instruction;
reg [5:0] PC_plus_4;
wire ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite;
wire [2:0] ALUControl;
wire [4:0] Register_Rs, Register_Rt, Register_Rd;
wire [31:0] branch_addr;

InstructionDecoder Instruction_Test(clk,Instruction,PC_plus_4,ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite,ALUControl,Register_Rs,Register_Rt,Register_Rd,branch_addr);

initial begin
 
  Instruction <= 32'b 0001ß0001001000110100110000100000;
  PC_plus_4 <= 6'b 000011;

    #1 $display("ALUSrc = %b, RegDst = %b , MemWrite = %b , MemRead = %b , Beq = %b ,Bne = %b ,Jump = %b ,MemToReg = %b ,RegWrite = %b ,ALUControl = %b ,Register_Rs = %b ,Register_Rt = %b ,Register_Rd = %b ,branch_addr = %b ",ALUSrc,RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite,ALUControl,Register_Rs,Register_Rt,Register_Rd,branch_addr);
  end

endmodule
