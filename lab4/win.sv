module win(
  input logic [15:0][3:0] cell_matrix_in,
  input logic a,b,c,d,
  output logic winner
);

  // Definir un array temporal para almacenar los valores de la matriz
  logic [15:0][0:3] temp;
  integer i;
  logic [0:3] temp_win;
  logic aux;

  always_comb begin
    for (int i = 0; i < 16; i++) begin
      temp[i] = cell_matrix_in[i];
    end
    temp_win = {a,b,c,d};
  end
	 
  always_comb begin   
	 aux = 0;
	 for (int i = 0; i < 16; i++) begin
      if(temp[i] == temp_win) begin
			aux = 1;
			break;
		end
    end
	 winner = aux;
  end
endmodule
