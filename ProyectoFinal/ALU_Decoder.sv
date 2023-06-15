module ALU_Decoder	

(
	input logic alu_op,   
	input logic [5:0] funct,
	output logic [3:0] alu_control,
	output logic [1:0] flag_w
	
);
	
	always @* begin
		
		if (alu_op == 1'b1) begin
		
			case(funct[4:1])
			
				4'b0100 : begin //suma
					if (funct[0] == 2'd0) begin
						alu_control = 4'b0000;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b0000;
						flag_w = 2'b11;
					end
				end
				
				4'b0010 : begin //resta
					if (funct[0] == 2'd0) begin
						alu_control = 4'b0001;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b0001;
						flag_w = 2'b11;
					end
				end
				
				4'b0000 : begin //and
					if (funct[0] == 2'd0) begin
						alu_control = 4'b0011;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b0011;
						flag_w = 2'b10;
					end
				end
				
				4'b1100 : begin //or
					if (funct[0] == 2'd0) begin
						alu_control = 4'b0100;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b0100;
						flag_w = 2'b10;
					end
				end
				
				4'b1110 : begin //mult
					if (funct[0] == 2'd0) begin
						alu_control = 4'b1010;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b1010;
						flag_w = 2'b11;
					end
				end
				
				2'b1111 : begin //div
					if (funct[0] == 2'd0) begin
						alu_control = 4'b1011;
						flag_w = 2'b00;
					end
					else begin
						alu_control = 4'b1011;
						flag_w = 2'b11;
					end
				end
				
				default: begin
					alu_control = 4'bxxxx;
					flag_w = 2'bxx;
				end
			
			endcase
		
		end
		
	end
	
endmodule