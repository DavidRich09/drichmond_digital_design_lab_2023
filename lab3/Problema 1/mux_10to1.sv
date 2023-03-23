module mux_10to1 #(parameter N=4)(output [N-1:0] out_mux, 
											 input [N-1:0] out_suma, out_rest, out_not, out_and, out_or, out_xor, out_right_ar, out_right_lo, out_left_ar, out_left_lo,  
											 input [3:0] select);


always @ (select) begin
    case (select)
			4'b0000: out_mux = out_suma;
			4'b0001: out_mux = out_rest;
			4'b0010: out_mux = out_right_ar;
			4'b0011: out_mux = out_right_lo;
			4'b0100: out_mux = out_left_ar;
			4'b0101: out_mux = out_left_lo;
			4'b0110: out_mux = out_not;
			4'b0111: out_mux = out_and;
			4'b1000: out_mux = out_or;
			4'b1001: out_mux = out_xor;
default: out_mux = out_suma;
    endcase
end

endmodule