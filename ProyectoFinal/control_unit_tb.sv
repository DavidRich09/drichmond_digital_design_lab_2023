module control_unit_tb;

   // Señales del test bench
	logic clk, reset;
   logic [1:0] op;      
	logic [5:0] funct;
	logic [3:0] rd, Cond, ALUFlags;
	logic [1:0] alu_control, reg_src, imm_src;
	logic PCSrc, RegWrite, MemWrite, mem_to_reg, alu_src;
	
	logic [31:0] test = 32'b11100010100010001000000000000001;


   // Instancia del módulo bajo prueba


   initial begin
	
	clk = 1'b0;
	clk = 1'b1;
	reset = 1'b0;
	

	Cond = test[31:28];
	op = test[27:26];
	funct = test[25:20];
	rd = test[15:12];
	ALUFlags = 4'b0000;
	
	#100
	
	Cond = test[31:28];
	op = test[27:26];
	funct = test[25:20];
	rd = test[15:12];
	ALUFlags = 4'b0000;
	
   end


endmodule