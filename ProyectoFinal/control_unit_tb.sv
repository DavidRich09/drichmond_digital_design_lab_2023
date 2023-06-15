module control_unit_tb;

   // Señales del test bench
	logic clk, reset,
   logic [1:0] op,        
	logic [5:0] funct,
	logic [3:0] rd, Cond, ALUFlags,
	logic [1:0] alu_control, reg_src, imm_src
	logic PCSrc, RegWrite, MemWrite, mem_to_reg, alu_src

   // Instancia del módulo bajo prueba
   Control_Unit CU (
      .clk(clk),
      .op(op),
      .funct(funct),
      .rd(rd),
      .Cond(Cond),
      .ALUFlags(ALUFlags),
      .alu_control(alu_control),
		.reg_src(reg_src),
		.imm_src(imm_src),
		.PCSrc(PCSrc),
		.RegWrite(RegWrite),
		.MemWrite(MemWrite),
		.mem_to_reg(mem_to_reg),
		.alu_src(alu_src)
		
   );

   initial begin
	
   end


endmodule