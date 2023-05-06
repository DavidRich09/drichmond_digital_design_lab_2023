module up_slide_tb;

	logic up_state;
	logic [15:0][3:0] cell_matrix_in;
	logic [15:0][3:0] cell_matrix_out;


	up_slide upModule
	
	(
	  .up_state(up_state),
	  .cell_matrix_in(cell_matrix_in),
	  .cell_matrix_out(cell_matrix_out)
	);
	


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

//		cell_matrix_in [0] = 4'd0;
//		cell_matrix_in [1] = 4'd0;
//		cell_matrix_in [2] = 4'd0;
//		cell_matrix_in [3] = 4'd0;
//		cell_matrix_in [4] = 4'd0;
//		cell_matrix_in [5] = 4'd0;
//		cell_matrix_in [6] = 4'd1;
//		cell_matrix_in [7] = 4'd1;
//		cell_matrix_in [8] = 4'd0;
//		cell_matrix_in [9] = 4'd0;
//		cell_matrix_in [10] = 4'd0;
//		cell_matrix_in [11] = 4'd0;
//		cell_matrix_in [12] = 4'd0;
//		cell_matrix_in [13] = 4'd0;
//		cell_matrix_in [14] = 4'd0;
//		cell_matrix_in [15] = 4'd0;
		
		cell_matrix_out [0] = 4'd0;
		cell_matrix_out [1] = 4'd0;
		cell_matrix_out [2] = 4'd0;
		cell_matrix_out [3] = 4'd0;
		cell_matrix_out [4] = 4'd0;
		cell_matrix_out [5] = 4'd0;
		cell_matrix_out [6] = 4'd0;
		cell_matrix_out [7] = 4'd0;
		cell_matrix_out [8] = 4'd0;
		cell_matrix_out [9] = 4'd0;
		cell_matrix_out [10] = 4'd0;
		cell_matrix_out [11] = 4'd0;
		cell_matrix_out [12] = 4'd0;
		cell_matrix_out [13] = 4'd0;
		cell_matrix_out [14] = 4'd0;
		cell_matrix_out [15] = 4'd0;
		
		up_state = 0;
		
		#10;
		
		$display("Testing up slide...");
		$display("initiating up_state...");
		
		up_state = 1;
		$display("up_state = 1");
		
		#1000;
		
	end

endmodule