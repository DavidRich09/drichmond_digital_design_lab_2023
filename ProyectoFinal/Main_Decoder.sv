module Main_Decoder	

(
	input logic [1:0] op,   
	input logic [5:0] funct,
	output logic branch,
	output logic reg_w,
	output logic mem_w,
	output logic mem_to_reg,
	output logic alu_src,
	output logic alu_op,
	output logic [1:0] imm_src,
	output logic [1:0] reg_src
	
);
	
	always_comb begin
		
		case(op)
		
			2'b00 : begin
				if (funct[5] == 2'd0) begin
					branch = 0;
					mem_to_reg = 0;
					mem_w = 0;
					alu_src = 0;
					imm_src = 2'b00;
					reg_w = 1;
					reg_src = 2'b00;
					alu_op = 1;
				end
				else
					branch = 0;
					mem_to_reg = 0;
					mem_w = 0;
					alu_src = 1;
					imm_src = 2'b00;
					reg_w = 1;
					reg_src = 2'b00;
					alu_op = 1;
				end
			end
			
			2'b01 : begin
				if (funct[0] == 2'd0) begin
					branch = 0;
					mem_to_reg = 0;
					mem_w = 1;
					alu_src = 1;
					imm_src = 2'b01;
					reg_w = 0;
					reg_src = 2'b10;
					alu_op = 0;
				end
				else
					branch = 0;
					mem_to_reg = 1;
					mem_w = 0;
					alu_src = 1;
					imm_src = 2'b01;
					reg_w = 1;
					reg_src = 2'b10;
					alu_op = 0;
				end
			end
			
			2'b10 : begin
				branch = 1;
				mem_to_reg = 0;
				mem_w = 0;
				alu_src = 1;
				imm_src = 2'b10;
				reg_w = 0;
				reg_src = 2'b11;
				alu_op = 0;
			end
			
			default: begin
				branch = 1'bx;
				mem_to_reg = 1'bx;
				mem_w = 1'bx;
				alu_src = 1'bx;
				imm_src = 2'bxx;
				reg_w = 1'bx;
				reg_src = 2'bxx;
				alu_op = 1'bx;
			end
		
		endcase
	
	end
	
endmodule