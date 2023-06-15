module Visualize(
    input logic [9:0] hs, vs,
	 input logic [31:0]qb,
    output logic [7:0] r, g, b,
	 output logic [19:0]address
);

  always @(posedge hs or posedge vs) begin
		if (hs < 256 && vs < 256) begin
			address <= address + 4;
			r <= qb;
			g <= qb;
			b <= qb;
		end
		else if (hs == 0 && vs == 0) begin
			address <= 0;
			r <= qb;
			g <= qb;
			b <= qb;
		end
		else begin
			address <= 0;
			r <= 0;
			g <= 0;
			b <= 0;
		end
	end

endmodule
