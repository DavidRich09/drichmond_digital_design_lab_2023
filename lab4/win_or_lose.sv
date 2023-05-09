module win_or_lose(
	
	input logic a,b,c,d,reset,
   input logic [15:0][3:0] cell_matrix_in,
	output logic [15:0][3:0] cell_matrix_out,
   output logic win, lose
  
  );
  
  logic all_zeros, move, winner; 
  
  have_move h_move (
    .cell_matrix_in(cell_matrix_in),
    .move(move)
  );

  check_matrix_full matrix_complete (
    .cell_matrix_in(cell_matrix_in),
    .all_values_zero(all_zeros)
  );
  
  win win_ver (
    .cell_matrix_in(cell_matrix_in),
    .a(a),
	 .b(b),
	 .c(c),
	 .d(d),
	 .winner(winner)
  );
  
	always_comb begin
	
	  if(reset == 1 || cell_matrix_in[0] === 4'bxxxx) begin
		 win = 0;
		 lose = 0;
	  end
	  else if(winner == 1) begin
		 win = 1;
		 lose = 0;
	  end
	  else if(all_zeros == 1 && move == 0) begin
		 win = 0;
		 lose = 1;
	  end
	  else begin
		 win = 0;
		 lose = 0;
	  end
	  $display("winner ", winner);
	  $display("all_zeros ", all_zeros);
	  $display("move ", move);
	  $display("table ", cell_matrix_in);
	  cell_matrix_out = cell_matrix_in;
	end
  
endmodule

