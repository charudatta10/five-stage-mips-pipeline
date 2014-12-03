`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:13 11/13/2014 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(Address, WriteData, MemRead, MemWrite, ReadData);
input [6:0] Address; // 7-bit address to memory.
input [31:0] WriteData; // Data to be written into WriteRegister
input MemRead; // Data in memory location Address is read if this control is set
input MemWrite; // WriteData is written in Address during positive clock edge if this control is set
output reg [31:0] ReadData; // Value read from memory location Address
reg [31:0] DataMemoryFile[6:0];
 
always @(*) begin
	if (MemRead)
		ReadData = DataMemoryFile[Address];
	if (MemWrite)
		DataMemoryFile[Address] = WriteData;
end

endmodule
