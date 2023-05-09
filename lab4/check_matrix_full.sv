module check_matrix_full(

  input logic [15:0][3:0] cell_matrix_in,
  output logic all_values_zero
  
  );

  // Definir un array temporal para almacenar los valores de la matriz
  logic [15:0][0:3] temp;
  logic aux;
  integer i;
  integer j;

  // Asignar los valores de la matriz al array temporal
  always_comb begin
  
	 aux = 1;
  
    for (int i = 0; i < 16; i++) begin
      temp[i] = cell_matrix_in[i];
    end
	 
	 for (int j = 0; j < 16; j++) begin

		if( temp[j] == 4'd0) begin
			$display("Valor de aux en la iteración %d: %b", i, aux);
			aux = 0;
			break;
		end
		
    end
	 
	 all_values_zero = aux;
	 
  end


endmodule