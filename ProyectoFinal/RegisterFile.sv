module RegisterFile

(	
	input logic clk, WE3, rst,
	input logic [3:0] A1, A2, A3,
	input logic [31:0] WD3, R15,
	output logic [31:0] RD1, RD2

);

	reg [31:0] registers [14:0];
	

	
	always_ff @(posedge clk or posedge rst) begin
	
		if (rst == 1) begin
				
			for (int i = 0; i < 15; i = i + 1) begin
				registers[i] = 0;
			end
				
		end
		
		else if (WE3) begin
				registers[A3] <= WD3;
		end		
				
	end
	
	
	assign RD1 = (A1 == 4'b1111) ? R15 : registers[A1];
	assign RD2 = (A2 == 4'b1111) ? R15 : registers[A2];
	
endmodule