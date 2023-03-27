module register_output  #(parameter N=4)(
													 input [N-1:0] res,
													 input clk, reset, reg_flag,zr_flag, cry_flag, of_flag,
													 output reg reg_neg_flag, reg_zr_flag, reg_cry_flag, reg_of_flag,
													 output reg [N-1:0] regOutput);
													 
	always @(posedge clk or posedge reset) begin
	
		if(reset) begin
			reg_neg_flag <= 0;
			reg_zr_flag <= 0;
			reg_cry_flag <= 0;
			reg_of_flag <= 0;
			regOutput <= 0;
			end
		else begin
			reg_neg_flag <= reg_flag;
			reg_zr_flag <= zr_flag;
			reg_cry_flag <= cry_flag;
			reg_of_flag <= of_flag;
			regOutput <= regOutput;
			end
			
	end
	
endmodule