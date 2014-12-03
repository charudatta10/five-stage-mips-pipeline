`timescale 1ns / 1ps

module TestBench();
  reg clk;
  reg flush;
  reg [5:0] pc;
  wire [5:0] pc_plus_4;
  wire [31:0] instr;

  InstructionFetch instr_ftch(clk, pc, flush, pc_plus_4, instr);

  initial begin
    clk <= 0;

    pc <= 0; flush <= 0;
    #1 $display("instr=%b, pc+4=%b", instr, pc_plus_4);
    pc <= 0; flush <= 1;
    #1 $display("instr=%b, pc+4=%b", instr, pc_plus_4);
    pc <= 4; flush <= 0;
    #1 $display("instr=%b, pc+4=%b", instr, pc_plus_4);
  end

  //#4 clk = ~clk;
endmodule
