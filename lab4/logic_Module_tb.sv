module logic_Module_tb;

	logic win_a = 0;
	logic win_b = 0;
	logic win_c = 1;
	logic win_d = 0;
	logic reset_state = 0;
	logic up_state = 0;
	logic down_state = 0;
	logic left_state = 0;
	logic right_state = 0;
	logic lose_output = 0;
	logic win_output = 0;
	logic [12:0] points_out;
	logic [15:0][3:0] cell_matrix_out;

	logic_Module LM

	(
	  .win_a(win_a),
	  .win_b(win_b),
	  .win_c(win_c),
	  .win_d(win_d),
	  .up_state(up_state),
	  .down_state(down_state),
	  .left_state(left_state),
	  .right_state(right_state),
	  .reset_state(reset_state),
	  .lose_output(lose_output),
	  .win_output(win_output),
	  .points_out(points_out),
	  .cell_matrix_out(cell_matrix_out)

	);
	

	initial begin
		
		#20;
		reset_state = 1;
		#20;
		reset_state = 0;
		#20;
//		up_state = 1;
//		#20;
//		up_state = 0;
//		left_state = 1;
//		#20;
//		left_state = 0;
//		right_state = 1;
//		#20;
//		right_state = 0;
//		down_state = 1;
//		#20;
//		down_state = 0;
//		reset_state = 1;
//		#20;
//		reset_state = 0;
//		#20;
//		up_state = 1;
//		#20;
//		up_state = 0;
//		left_state = 1;
//		#20;
//		left_state = 0;
//		right_state = 1;
//		#20;
//		right_state = 0;
//		down_state = 1;
//		#20;
//		down_state = 0;
		reset_state = 1;
		#20;
		reset_state = 0;
		#20;
		
	end

endmodule