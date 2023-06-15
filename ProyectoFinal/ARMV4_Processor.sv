module ARMV4_Processor	

(	
	input logic clk,
	input logic rst
);	

	logic q_b;
	
	logic RegWrite, neg_flag, zr_flag, cry_flag, of_flag, MemWrite, PCSrc,ALUScr,Mem2Reg;
	
	logic [1:0] RegSrc, ImmSrc; 
	
	logic [3:0] RA1, RA2, ALUFlags, ALUControl;
	
	logic [31:0] Result, SrcA, SrcB, WriteData, PCPlus8, PCPlus4, ALUResult, PC, PC_Prime, Extlmm, ReadData, Instr;
	
	assign ALUFlags = {neg_flag, zr_flag, cry_flag, of_flag};
	
	RegisterFile rf(clk, RegWrite, rst, RA1, RA2, Instr[15:12], Result, PCPlus8, SrcA, WriteData);
	
	ALU #(.N(32)) alu(SrcA, SrcB, ALUControl, neg_flag, zr_flag, cry_flag, of_flag, ALUResult);

	Processor_RAM ram(rst, WriteData,0,clk,ALUResult,0,MemWrite,0,ReadData,q_b);
	
	Processor_ROM rom(rst, PC, clk, Instr);
	
	Add4Bit #(.N(32)) FirstAdd4 (PC,PCPlus4); 
	
	Add4Bit #(.N(32)) SecondAdd4 (PCPlus4,PCPlus8);
	
	mux_2_1 #(.N(32)) muxPCSrc (PCPlus4, Result, PCSrc, PC_Prime);
	
	mux_2_1 #(.N(4)) muxRegSrc0 (Instr[19:16], 15, RegSrc[0], RA1);
	
	mux_2_1 #(.N(4)) muxRegSrc1 (Instr[3:0], Instr[15:12], RegSrc[1], RA2);
	
	mux_2_1 #(.N(32)) muxALUSrc (WriteData, Extlmm, ALUScr, SrcB);
	
	mux_2_1 #(.N(32)) muxMem2Reg (ALUResult, ReadData, Mem2Reg, Result);
	
	simple_ff ff (PC_Prime, clk, PC);
	
	Extend_24_to_32 extend1(Instr[23:0],ImmSrc,Extlmm);
	
	Control_Unit CU (clk,rst,Instr[27:26],Instr[25:20],Instr[15:12],Instr[31:28],ALUFlags,ALUControl,RegSrc,ImmSrc,PCSrc, RegWrite, MemWrite, Mem2Reg, ALUScr);


endmodule