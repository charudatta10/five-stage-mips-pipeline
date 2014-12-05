module InstructionDecoder(
input clk, 
input [31:0] Instruction,
input [5:0] PC_plus_4,
output ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite,
output [2:0] ALUControl,
output reg [4:0] Register_Rs,
output reg [4:0] Register_Rt,
output reg [4:0] Register_Rd,
output reg [31:0] branch_addr
);

wire [31:0] intermit_branch_addr;

Control ID_Control(Instruction[31:26], Instruction[5:0], ALUSrc, RegDst, MemWrite, MemRead, Beq, Bne, Jump, MemToReg, RegWrite, ALUControl); 

SignExtension ID_BranchExt(Instruction[15:0], intermit_branch_addr);

always @(*) begin
  Register_Rs = Instruction[25:21];
  Register_Rt = Instruction[20:16];
  Register_Rd = Instruction[15:11];

  branch_addr = branch_addr << 2;
  branch_addr = PC_plus_4 + intermit_branch_addr;
end

endmodule