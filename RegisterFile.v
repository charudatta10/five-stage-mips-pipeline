`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:17 11/13/2014 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(ReadRegister1, ReadRegister2, WriteRegister, WriteData, RegWrite, Clk, ReadData1, ReadData2);
input [4:0] ReadRegister1, ReadRegister2; // Two registers to be read
input [4:0] WriteRegister; // Register address to write into
input [31:0] WriteData; // Data to be written into WriteRegister
input RegWrite; // RegWrite control signal. Data is written only when this signal is enabled
input Clk;
output reg [31:0] ReadData1, ReadData2;
 

reg [31:0] Register0,
			  Register1,
			  Register2,
			  Register3,
			  Register4,
			  Register5,
			  Register6,
			  Register7,
			  Register8,
			  Register9,
			  Register10,
			  Register11,
			  Register12,
			  Register13,
			  Register14,
			  Register15,
			  Register16,
			  Register17,
			  Register18,
			  Register19,
			  Register20,
			  Register21,
			  Register22,
			  Register23,
			  Register24,
			  Register25,
			  Register26,
			  Register27,
			  Register28,
			  Register29,
			  Register30,
			  Register31;
   initial begin
   Register0=1;
   end
always @(*) begin
	if (RegWrite) begin
		case(WriteRegister)
			0: Register0 = WriteData;
			1: Register1 = WriteData;
			2: Register2 = WriteData;
			3: Register3 = WriteData;
			4: Register4 = WriteData;
			5: Register5 = WriteData;
			6: Register6 = WriteData;
			7: Register7 = WriteData;
			8: Register8 = WriteData;
			9: Register9 = WriteData;
			10: Register10 = WriteData;
			11: Register11 = WriteData;
			12: Register12 = WriteData;
			13: Register13 = WriteData;
			14: Register14 = WriteData;
			15: Register15 = WriteData;
			16: Register16 = WriteData;
			17: Register17 = WriteData;
			18: Register18 = WriteData;
			19: Register19 = WriteData;
			20: Register20 = WriteData;
			21: Register21 = WriteData;
			22: Register22 = WriteData;
			23: Register23 = WriteData;
			24: Register24 = WriteData;
			25: Register25 = WriteData;
			26: Register26 = WriteData;
			27: Register27 = WriteData;
			28: Register28 = WriteData;
			29: Register29 = WriteData;
			30: Register30 = WriteData;
			31: Register31 = WriteData;
		endcase
		end
	else begin
		case(ReadRegister1)
			0: ReadData1 = Register0;
			1: ReadData1 = Register1;
			2: ReadData1 = Register2;
			3: ReadData1 = Register3;
			4: ReadData1 = Register4;
			5: ReadData1 = Register5;
			6: ReadData1 = Register6;
			7: ReadData1 = Register7;
			8: ReadData1 = Register8;
			9: ReadData1 = Register9;
			10: ReadData1 = Register10;
			11: ReadData1 = Register11;
			12: ReadData1 = Register12;
			13: ReadData1 = Register13;
			14: ReadData1 = Register14;
			15: ReadData1 = Register15;
			16: ReadData1 = Register16;
			17: ReadData1 = Register17;
			18: ReadData1 = Register18;
			19: ReadData1 = Register19;
			20: ReadData1 = Register20;
			21: ReadData1 = Register21;
			22: ReadData1 = Register22;
			23: ReadData1 = Register23;
			24: ReadData1 = Register24;
			25: ReadData1 = Register25;
			26: ReadData1 = Register26;
			27: ReadData1 = Register27;
			28: ReadData1 = Register28;
			29: ReadData1 = Register29;
			30: ReadData1 = Register30;
			31: ReadData1 = Register31;
		endcase
		case(ReadRegister2)
			0: ReadData2 = Register0;
			1: ReadData2 = Register1;
			2: ReadData2 = Register2;
			3: ReadData2 = Register3;
			4: ReadData2 = Register4;
			5: ReadData2 = Register5;
			6: ReadData2 = Register6;
			7: ReadData2 = Register7;
			8: ReadData2 = Register8;
			9: ReadData2 = Register9;
			10: ReadData2 = Register10;
			11: ReadData2 = Register11;
			12: ReadData2 = Register12;
			13: ReadData2 = Register13;
			14: ReadData2 = Register14;
			15: ReadData2 = Register15;
			16: ReadData2 = Register16;
			17: ReadData2 = Register17;
			18: ReadData2 = Register18;
			19: ReadData2 = Register19;
			20: ReadData2 = Register20;
			21: ReadData2 = Register21;
			22: ReadData2 = Register22;
			23: ReadData2 = Register23;
			24: ReadData2 = Register24;
			25: ReadData2 = Register25;
			26: ReadData2 = Register26;
			27: ReadData2 = Register27;
			28: ReadData2 = Register28;
			29: ReadData2 = Register29;
			30: ReadData2 = Register30;
			31: ReadData2 = Register31;
		endcase
	end
end
endmodule
