module Control_Unit_Decoder 	

(
	input logic [1:0] op,        
	input logic [5:0] funct,
	input logic [3:0] rd,
	output logic pcs,reg_w,mem_w,mem_to_reg,alu_src,
	output logic [1:0] flag_w, imm_src, reg_src,
	output logic [3:0] alu_control
);
	
	logic branch;
	logic alu_op;
	

	PC_Logic pc_logic(rd,branch,reg_w,pcs);
	
	Main_Decoder main_decoder(op,funct,branch,reg_w,mem_w,mem_to_reg,alu_src,alu_op,imm_src,reg_src);
	
	ALU_Decoder alu_decoder(alu_op,funct,alu_control,flag_w);
	


endmodule