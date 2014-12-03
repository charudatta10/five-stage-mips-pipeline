`timescale 1ns / 1ps

module InstructionFetch(
  input clk,
  input [5:0] PC, // Program counter
  input IF_Flush, // Instruction flush
  output reg [5:0] PC_plus_4,
  output reg [31:0] instruction
  );

  wire [31:0] instr_at_PC;

  InstructionMemory instr_mem(clk, PC, instr_at_PC);


  always @(posedge clk) begin
    PC_plus_4 <= PC + 4;
    if (~IF_Flush)
      instruction <= instr_at_PC;
    else
      instruction <= 0;
  end

endmodule
