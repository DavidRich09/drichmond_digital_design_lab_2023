module mux_2_1 #(parameter N=4)(input [N-1:0] a,b,input sel,output logic [N-1:0] out);
	always_comb begin
		if(!sel)
			out = a;
		else 
			out = b;
	end

endmodule 