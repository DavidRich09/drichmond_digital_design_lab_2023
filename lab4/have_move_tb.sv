module have_move_tb;

  // Definir los puertos del módulo de prueba
  logic [15:0][3:0] cell_matrix_in;
  logic move;

  // Instanciar el módulo que se está probando
  have_move dut (
    .cell_matrix_in(cell_matrix_in),
    .move(move)
  );

  // Inicializar los valores de entrada
  initial begin
    
		cell_matrix_in [0] = 4'd0;
		cell_matrix_in [1] = 4'd1;
		cell_matrix_in [2] = 4'd2;
		cell_matrix_in [3] = 4'd3;
		cell_matrix_in [4] = 4'd4;
		cell_matrix_in [5] = 4'd5;
		cell_matrix_in [6] = 4'd6;
		cell_matrix_in [7] = 4'd7;
		cell_matrix_in [8] = 4'd8;
		cell_matrix_in [9] = 4'd9;
		cell_matrix_in [10] = 4'd10;
		cell_matrix_in [11] = 4'd0;
		cell_matrix_in [12] = 4'd1;
		cell_matrix_in [13] = 4'd2;
		cell_matrix_in [14] = 4'd3;
		cell_matrix_in [15] = 4'd4;
		
		#200
		
		cell_matrix_in [0] = 4'd0;
		cell_matrix_in [1] = 4'd0;
		cell_matrix_in [2] = 4'd0;
		cell_matrix_in [3] = 4'd0;
		cell_matrix_in [4] = 4'd0;
		cell_matrix_in [5] = 4'd0;
		cell_matrix_in [6] = 4'd0;
		cell_matrix_in [7] = 4'd0;
		cell_matrix_in [8] = 4'd0;
		cell_matrix_in [9] = 4'd0;
		cell_matrix_in [10] = 4'd0;
		cell_matrix_in [11] = 4'd0;
		cell_matrix_in [12] = 4'd0;
		cell_matrix_in [13] = 4'd0;
		cell_matrix_in [14] = 4'd0;
		cell_matrix_in [15] = 4'd0;
		
		#200
		
		cell_matrix_in [0] = 4'd0;
		cell_matrix_in [1] = 4'd0;
		cell_matrix_in [2] = 4'd0;
		cell_matrix_in [3] = 4'd0;
		cell_matrix_in [4] = 4'd0;
		cell_matrix_in [5] = 4'd0;
		cell_matrix_in [6] = 4'd0;
		cell_matrix_in [7] = 4'd0;
		cell_matrix_in [8] = 4'd0;
		cell_matrix_in [9] = 4'd0;
		cell_matrix_in [10] = 4'd0;
		cell_matrix_in [11] = 4'd0;
		cell_matrix_in [12] = 4'd1;
		cell_matrix_in [13] = 4'd0;
		cell_matrix_in [14] = 4'd0;
		cell_matrix_in [15] = 4'd0;
	 
  end

endmodule