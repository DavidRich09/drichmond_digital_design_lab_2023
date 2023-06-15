module MatrixFiller
(
	input qb,
	output logic address
	output logic matrix
	
);
  
  logic [7:0] in_matrix [0:255][0:255];

  
  function void fillMatrix;
    
    reg [7:0] address;
	 logic address = 65536;

    
    for (int i = 0; i < 256; i = i + 1) begin
      
      for (int j = 0; j < 256; j = j + 1) begin
        
        matrix[i][j] = qb
        address <= address + 4;
      end
    end
  endfunction
 endmodule
 