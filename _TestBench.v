`timescale 1ns / 1ps

module TestBench();
  reg [5:0] addr;
  wire [31:0] instr;

  InstructionMemory instr_mem(addr, clk, instr);

  initial begin
    addr <= 0;
    #1 $display("instr=%b", instr);
    addr <= 1;
    #1 $display("instr=%b", instr);
  end
endmodule
