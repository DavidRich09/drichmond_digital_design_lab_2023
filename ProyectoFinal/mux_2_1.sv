module mux_2_1 #(parameter N=4)(input logic[N-1:0] a,b,input logic sel,output logic [N-1:0] out);
	always_comb begin
		if(!sel)
			out = a;
		else 
			out = b;
	end

endmodule 