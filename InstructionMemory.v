`timescale 1ns / 1ps

module InstructionMemory(
  input clk,
  input [5:0] instruction_address,
  output reg [31:0] instruction
  );

  reg [31:0] instruction_memory_file[5:0];

  initial
  begin
    // Put program in here...
    instruction_memory_file[0] <= 1337;
    instruction_memory_file[4] <= 4294967295;
  end

  //always @(negedge clk) begin
  always @(*) begin
    instruction = instruction_memory_file[instruction_address];
  end

endmodule
