module Control_Unit	

(	
	input logic clk, reset,
   input logic [1:0] op,        
	input logic [5:0] funct,
	input logic [3:0] rd, Cond, ALUFlags,
	output logic [1:0] alu_control, reg_src, imm_src,
	output logic PCSrc, RegWrite, MemWrite, mem_to_reg, alu_src
	
);
	
	logic [1:0] flag_w;
	logic pcs,reg_w,mem_w;
	
	Control_Unit_Decoder cud(op,funct,rd,pcs,reg_w,mem_w,mem_to_reg,alu_src,flag_w,imm_src, reg_src, alu_control);
	
	cond_logic CL(clk,reset,Cond,ALUFlags,flag_w,pcs,reg_w,mem_w);
	
	

	endmodule	