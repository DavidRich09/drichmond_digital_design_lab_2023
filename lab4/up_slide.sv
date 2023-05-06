module up_slide
(
	input logic up_state,        

	input logic [15:0][3:0] cell_matrix_in,
	output logic [15:0][3:0] cell_matrix_out
	
	//input logic clk (????)   
	
);	

	integer i;
	logic [15:0][3:0] cell_matrix_variable;
	

	always @(posedge up_state) begin
	
		cell_matrix_variable = cell_matrix_in;
		
		//luego de que se ejecute el "for" 4 veces, SIEMPRE va a quedar todo combinado al máximo y ordenado
		
		//NOTA: Al analizarlo un rato, creo que con solo 3 iteraciones siempre queda bien, 
		//pero por si acaso ignoré un caso importante, lo dejo en 4.
		
		repeat(4) begin
		
			for(i=0; i<4; i=i+1) begin
			
				//first row and second row comparison
				
				if (cell_matrix_variable[i] == 4'd0) begin
				
					cell_matrix_variable[i] = cell_matrix_variable[i+4];
					cell_matrix_variable[i+4] = cell_matrix_variable[i+8];
					cell_matrix_variable[i+8] = cell_matrix_variable[i+12];
					cell_matrix_variable[i+12] = 4'd0;
					
				end
				else if (cell_matrix_variable[i] == cell_matrix_variable[i+4]) begin
				
					cell_matrix_variable[i] = cell_matrix_variable[i] + 4'd1;
					cell_matrix_variable[i+4] = cell_matrix_variable[i+8];
					cell_matrix_variable[i+8] = cell_matrix_variable[i+12];
					cell_matrix_variable[i+12] = 4'd0;
					
				end
				
				//second row and third row comparison
				
				if (cell_matrix_variable[i+4] == 4'd0) begin
				
					cell_matrix_variable[i+4] = cell_matrix_variable[i+8];
					cell_matrix_variable[i+8] = cell_matrix_variable[i+12];
					cell_matrix_variable[i+12] = 4'd0;
					
				end
				else if (cell_matrix_variable[i+4] == cell_matrix_variable[i+8]) begin
				
					cell_matrix_variable[i+4] = cell_matrix_variable[i+4] + 4'd1;
					cell_matrix_variable[i+8] = cell_matrix_variable[i+12];
					cell_matrix_variable[i+12] = 4'd0;
					
				end
				
				//third row and forth row comparison
				
				if (cell_matrix_variable[i+8] == 4'd0) begin
				
					cell_matrix_variable[i+8] = cell_matrix_variable[i+12];
					cell_matrix_variable[i+12] = 4'd0;
				
				end
				else if (cell_matrix_variable[i+8] == cell_matrix_variable[i+12]) begin
				
					cell_matrix_variable[i+8] = cell_matrix_variable[i+8] + 4'd1;
					cell_matrix_variable[i+12] = 4'd0;
				
				end

			end
		
		end
		
	cell_matrix_out = cell_matrix_variable;
	
	end

	
endmodule
