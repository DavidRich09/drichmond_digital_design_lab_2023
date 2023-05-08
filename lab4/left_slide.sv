module left_slide
(
	input logic left_state,

	input logic [12:0] points_in,
	
	input logic [15:0][3:0] cell_matrix_in,
	output logic [15:0][3:0] cell_matrix_out,
	
	output logic [12:0] points_out
	
);	

	integer i;
	logic [15:0][3:0] cell_matrix_variable;
	logic [12:0] points;
	

	always @(posedge left_state) begin
	
		cell_matrix_variable = cell_matrix_in;
		
		points = points_in;
		
		//luego de que se ejecute el "for" 4 veces, SIEMPRE va a quedar todo combinado al máximo y ordenado
		
		//NOTA: Al analizarlo un rato, creo que con solo 3 iteraciones siempre queda bien, 
		//pero por si acaso ignoré un caso importante, lo dejo en 4.
		
		repeat(4) begin
		
			for(i=0; i<16; i=i+4) begin
			
				//forth row and third row comparison
				
				if (cell_matrix_variable[i+3] == 4'd0) begin
					
					cell_matrix_variable[i+3] = cell_matrix_variable[i+2];
					cell_matrix_variable[i+2] = cell_matrix_variable[i+1];
					cell_matrix_variable[i+1] = cell_matrix_variable[i];
					cell_matrix_variable[i] = 4'd0;
					
				end
				else if (cell_matrix_variable[i+3] == cell_matrix_variable[i+2]) begin
				
					cell_matrix_variable[i+3] = cell_matrix_variable[i+3] + 4'd1;
					cell_matrix_variable[i+2] = cell_matrix_variable[i+1];
					cell_matrix_variable[i+1] = cell_matrix_variable[i];
					cell_matrix_variable[i] = 4'd0;

					points = points + 1;
					
				end
				
				//third row and second row comparison
				
				if (cell_matrix_variable[i+2] == 4'd0) begin
				
					cell_matrix_variable[i+2] = cell_matrix_variable[i+1];
					cell_matrix_variable[i+1] = cell_matrix_variable[i];
					cell_matrix_variable[i] = 4'd0;
					
				end
				else if (cell_matrix_variable[i+2] == cell_matrix_variable[i+1]) begin
				
					cell_matrix_variable[i+2] = cell_matrix_variable[i+1] + 4'd1;
					cell_matrix_variable[i+1] = cell_matrix_variable[i];
					cell_matrix_variable[i] = 4'd0;
					
					points = points + 1;
					
				end
				
				//second row and first row comparison
				
				if (cell_matrix_variable[i+1] == 4'd0) begin
				
					cell_matrix_variable[i+1] = cell_matrix_variable[i];
					cell_matrix_variable[i] = 4'd0;
				
				end
				else if (cell_matrix_variable[i+1] == cell_matrix_variable[i]) begin
				
					cell_matrix_variable[i+1] = cell_matrix_variable[i+1] + 4'd1;
					cell_matrix_variable[i] = 4'd0;
					
					points = points + 1;
				
				end

			end
		
		end
		
	cell_matrix_out = cell_matrix_variable;
	points_out = points;
	
	end

	
endmodule
