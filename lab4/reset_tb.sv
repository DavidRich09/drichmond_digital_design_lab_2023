module reset_tb;
	
	logic reset_input;
	logic [15:0][3:0] cell_matrix_in;
	logic [15:0][3:0] cell_matrix_out;
	
	reset reset_inst(.reset_input(reset_input), .cell_matrix_in(cell_matrix_in), .cell_matrix_out(cell_matrix_out));
	
	initial begin
	
		cell_matrix_in [0] = 4'd1;
		cell_matrix_in [1] = 4'd1;
		cell_matrix_in [2] = 4'd0;
		cell_matrix_in [3] = 4'd0;
		cell_matrix_in [4] = 4'd1;
		cell_matrix_in [5] = 4'd0;
		cell_matrix_in [6] = 4'd1;
		cell_matrix_in [7] = 4'd2;
		cell_matrix_in [8] = 4'd1;
		cell_matrix_in [9] = 4'd1;
		cell_matrix_in [10] = 4'd0;
		cell_matrix_in [11] = 4'd0;
		cell_matrix_in [12] = 4'd1;
		cell_matrix_in [13] = 4'd0;
		cell_matrix_in [14] = 4'd1;
		cell_matrix_in [15] = 4'd1;
		
		#100;
		
		reset_input = 1;
		
		#100;
		
		cell_matrix_in [0] = 4'd1;
		cell_matrix_in [1] = 4'd1;
		cell_matrix_in [2] = 4'd0;
		cell_matrix_in [3] = 4'd0;
		cell_matrix_in [4] = 4'd1;
		cell_matrix_in [5] = 4'd0;
		cell_matrix_in [6] = 4'd1;
		cell_matrix_in [7] = 4'd2;
		cell_matrix_in [8] = 4'd1;
		cell_matrix_in [9] = 4'd1;
		cell_matrix_in [10] = 4'd0;
		cell_matrix_in [11] = 4'd0;
		cell_matrix_in [12] = 4'd1;
		cell_matrix_in [13] = 4'd0;
		cell_matrix_in [14] = 4'd1;
		cell_matrix_in [15] = 4'd1;
		
	
	end
	

endmodule