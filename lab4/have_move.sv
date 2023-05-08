module have_move(

  input logic [15:0][3:0] cell_matrix_in,
  output logic move
  
  );

  // Definir un array temporal para almacenar los valores de la matriz
  logic [15:0][0:3] temp;
  integer i;

  // Asignar los valores de la matriz al array temporal
  always_comb begin
  
    for (int i = 0; i < 16; i++) begin
      temp[i] = cell_matrix_in[i];
    end
	 
	 move = 0;
	 
	 for (int i = 0; i < 16; i++) begin
		if( i == 1 || i == 2) begin
			if ( temp[i] == temp[i-1] || temp[i] == temp[i+4] || temp[i] == temp[i+1] ) begin
				move = 1;
			end
		end
		else if (i == 4 || i == 8) begin
			if ( temp[i] == temp[i+1] || temp[i] == temp[i-4] || temp[i] == temp[i+4] ) begin
				move = 1;
			end		
		end
		else if (i == 7 || i == 11) begin
			if ( temp[i] == temp[i-1] || temp[i] == temp[i-4] || temp[i] == temp[i+4] ) begin
				move = 1;
			end				
		end
		else if (i == 13 || i == 14) begin
			if ( temp[i] == temp[i-1] || temp[i] == temp[i-4] || temp[i] == temp[i+1] ) begin
				move = 1;
			end				
		end
		else if (i == 0) begin
			if ( temp[i] == temp[i+1] || temp[i] == temp[i+4]) begin
				move = 1;
			end		
		end
		else if (i == 3) begin
			if ( temp[i] == temp[i-1] || temp[i] == temp[i+4]) begin
				move = 1;
			end		
		end
		else if (i == 12) begin
			if ( temp[i] == temp[i+1] || temp[i] == temp[i-4]) begin
				move = 1;
			end		
		end
		else if (i == 15) begin
			if ( temp[i] == temp[i-1] || temp[i] == temp[i-4]) begin
				move = 1;
			end		
		end
		else if (i == 5 || i == 6 || i == 9 || i == 10) begin
			if ( temp[i] == temp[i+1] || temp[i] == temp[i-4] || temp[i] == temp[i+4] || temp[i] == temp[i-4]) begin
				move = 1;
			end				
		end
		
    end
	 
  end


endmodule