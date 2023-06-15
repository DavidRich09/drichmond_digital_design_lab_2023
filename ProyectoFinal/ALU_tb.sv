module ALU_tb;


// Bits
	parameter N = 4;
	
	// Inputs
	logic [N-1:0] a;
	logic [N-1:0] b;
	logic [3:0] s;
	
	// Outputs
	logic neg_flag;
	logic zr_flag;
	logic cry_flag;
	logic of_flag;
	logic [N-1:0] result;
	
	// Instanciar ALU
	ALU #(.N(N)) DUT(
		.a(a),
		.b(b),
		.s(s),
		.neg_flag(neg_flag),
		.zr_flag(zr_flag),
		.cry_flag(cry_flag),
		.of_flag(of_flag),
		.result(result)
	);
	
	
	initial begin
		// Test case 1 - Sumador
		a = 4'b1010;
		b = 4'b0111;
		s = 4'b0000;
		#40;
		
		a = 4'b1111;
		b = 4'b1111;
		s = 4'b0000;
		#40;
		
		
		// Test case 2 - Restador
		a = 4'b1010;
		b = 4'b0111;
		s = 4'b0001;
		#40;
		
		a = 4'b1110;
		b = 4'b0011;
		s = 4'b0001;
		#40;
		
		
		// Test case 3 - AND
		a = 4'b1010;
		b = 4'b0111;
		s = 4'b0011;
		#40;
		
		a = 4'b1110;
		b = 4'b0101;
		s = 4'b0011;
		#40;
		
		
		// Test case 4 - OR
		a = 4'b1010;
		b = 4'b0111;
		s = 4'b0100;
		#40;
		
		a = 4'b1110;
		b = 4'b0101;
		s = 4'b0100;
		#40;
		
		
		// Test case 5 - XOR
		a = 4'b1010;
		b = 4'b0111;
		s = 4'b0101;
		#40;
		
		a = 4'b1110;
		b = 4'b0011;
		s = 4'b0101;
		#40;
		
		
		// Test case 6 - NOT
		a = 4'b1010;
		b = 4'b0000;
		s = 4'b0010;
		#40;
		
		a = 4'b1111;
		b = 4'b1010;
		s = 4'b0010;
		#40;
		
		
		// Test case 7 - Shift left Ar
		a = 4'b1010;
		b = 4'b0000;
		s = 4'b1000;
		#40;
		
		a = 4'b0110;
		b = 4'b0000;
		s = 4'b1000;
		#40;
		
		// Test case 8 - Shift left Lo
		a = 4'b1110;
		b = 4'b0000;
		s = 4'b1001;
		#40;
		
		a = 4'b1100;
		b = 4'b0000;
		s = 4'b1001;
		#40;
		
		
		//Test case 9 - Shift Right Ar
		a = 4'b1010;
		b = 4'b0000;
		s = 4'b0110;
		#40;
		
		a = 4'b1110;
		b = 4'b0000;
		s = 4'b0110;
		#40;
		
		//Test Case 10 - Shift Right Logic
		a = 4'b0010;
		b = 4'b0000;
		s = 4'b0111;
		#40;
		
		a = 4'b0110;
		b = 4'b0000;
		s = 4'b0111;
		#40;
		
		//Test Case 11 - Multiplicacion
		a = 2;
		b = 2;
		s = 4'b1010;
		#40;
		
		a = 2;
		b = 4;
		s = 4'b1010;
		#40;
		
		//Test Case 12 - Division
		a = 4;
		b = 2;
		s = 4'b1011;
		#40;
		
		a = 9;
		b = 3;
		s = 4'b1011;
		#40;
		
		end
		
endmodule
