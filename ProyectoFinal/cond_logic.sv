module cond_logic(input logic clk, reset,
                  input logic [3:0] Cond, ALUFlags,
						input logic [1:0] FlagW,
						input logic PCS, RegW, MemW,
						output logic PCSrc, RegWrite, MemWrite
						);
						
	logic [1:0] FlagWrite;
	logic [3:0] Flags;
	logic CondEx;
	
	flip_flop_reset #(2) ff_1 (clk, reset, FlagWrite[1],
	                           ALUFlags[3:2], Flags[3:2]);
										
	flip_flop_reset #(2) ff_0 (clk, reset, FlagWrite[0],
	                           ALUFlags[1:0], Flags[1:0]);
	
	cond_check cc(Cond, Flags, CondEx);
	
	assign FlagWrite = FlagW  & {2{CondEx}};
	assign RegWrite = RegW & CondEx;
	assign MemWrite = MemW & CondEx;
	assign PCSrc = PCS & CondEx;
	
endmodule


module flip_flop_reset #(parameter WIDTH = 8)
				  (input logic clk, reset, en,
               input logic [WIDTH-1:0] d,
					output logic [WIDTH-1:0] q);
					
	always_ff @(posedge clk, posedge reset)
		if(reset) q <= 0;
		else if (en) q <= d;
		
endmodule
