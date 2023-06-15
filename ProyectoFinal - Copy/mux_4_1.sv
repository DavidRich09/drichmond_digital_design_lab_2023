module mux_4_1 #(parameter N=32)(input [N-1:0] a,b,c,d,input [1:0] sel,output logic [N-1:0] out);
	
	always_comb begin
		case(sel)
			0: out=a;
			1: out=b;
			2: out=c;
			3: out=d;
			default out=a;
		endcase
	end
	
endmodule 