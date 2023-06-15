module ALU_Decoder	

(
	input logic alu_op,   
	input logic [5:0] funct,
	output logic [1:0] alu_control,
	output logic [1:0] flag_w
	
);
	
	always_comb begin
		
		if (alu_op == 1) begin
		
			case(funct[4:1])
			
				2'b0100 : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b11;
					end
				end
				
				2'b0010 : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b11;
					end
				end
				
				2'b0000 : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b10;
					end
				end
				
				2'b1100 : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b10;
					end
				end
				
				2'b (MULT_NUMBER) : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b11;
					end
				end
				
				2'b (DIV_NUMBER) : begin
					if (funct[0] == 2'd0) begin
						alu_control = ????;
						flag_w = 2'b00;
					end
					else
						alu_control = ????;
						flag_w = 2'b11;
					end
				end
				
				default: begin
					alu_control = 2'bxx;
					flag_w = 2'bxx;
				end
			
			endcase
		
		end
		
	end
	
endmodule