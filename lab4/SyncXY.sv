module SyncXY( input logic clk_25,
					output [9:0]hs,vs);
					
					always @(posedge clk_25)
					begin
						if (hs == 10'd800)
							begin
							hs <= 0;
							vs++;
							
							if (vs == 10'd525)
								vs <= 0;
							end
						else
							hs++;
					end
endmodule
