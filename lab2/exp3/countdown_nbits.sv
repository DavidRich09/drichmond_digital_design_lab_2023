module countdown_nbits 

#( parameter N = 6 ) 

(
	input logic clk,        
	input logic reset,        
	output reg[N-1:0] countdownOut,
	output logic [6:0] led2,
	output logic [6:0] led1
	
);
    

	reg[N-1:0] countdown = (2**N)-1;   


	localparam [15:0] segment_const = {
		7'b1111110, // 0
		7'b0110000, // 1
	   7'b1101101, // 2
	   7'b1111001, // 3
	   7'b0110011, // 4
	   7'b1011011, // 5
	   7'b1011111, // 6
	   7'b1110000, // 7
	   7'b1111111, // 8
	   7'b1111011, // 9
	  	7'b1110111, // A
	  	7'b0011111, // b
	  	7'b1001110, // C
	  	7'b0111101, // d
	  	7'b1001111, // E
	  	7'b1000111  // F
	};

	
	always @(posedge clk or posedge reset) 
		begin
			if (reset) 
				begin     
					countdown = (2**N)-1;
					countdownOut = countdown;
					led2 = ~segment_const[countdownOut[5:4]];
					led1 = ~segment_const[countdownOut[3:0]];
				end
				
			else
				begin
					if (countdown == 0) 
						begin   
							countdown = (2**N)-1;
							countdownOut = countdown;
							led2 = ~segment_const[countdownOut[5:4]];
							led1 = ~segment_const[countdownOut[3:0]];
						end
					else 
						begin       
							countdown = countdown - 1;
							countdownOut = countdown;
							led2 = ~segment_const[countdownOut[5:4]];
							led1 = ~segment_const[countdownOut[3:0]];
						end
				end
		end
	
endmodule