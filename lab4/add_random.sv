module add_random
(

	input logic [15:0][3:0] cell_matrix_in,
	output logic [15:0][3:0] cell_matrix_out
	
);	

	integer i;
	int pseudo_random_order[15:0];
	logic [15:0][3:0] cell_matrix_variable;
	
			
	always @(cell_matrix_in) begin
		
		cell_matrix_variable = cell_matrix_in;
		
		pseudo_random_order = '{5, 12, 2, 8, 13, 11, 1, 7, 9, 0, 15, 6, 14, 4, 10, 3};
		
		for(i=0; i<16; i=i+1) begin

			if (cell_matrix_variable[pseudo_random_order[i]] == 4'd0) begin
			
				cell_matrix_variable[pseudo_random_order[i]] = 4'd1;

				break;
				
			end
		
		end
		
		cell_matrix_out = cell_matrix_variable;
		
	end

endmodule