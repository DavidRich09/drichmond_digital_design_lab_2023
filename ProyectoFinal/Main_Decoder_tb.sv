module Main_Decoder_tb;

  // Inputs
  logic [1:0] op;
  logic [5:0] funct;

  // Outputs
  logic branch;
  logic reg_w;
  logic mem_w;
  logic mem_to_reg;
  logic alu_src;
  logic alu_op;
  logic [1:0] imm_src;
  logic [1:0] reg_src;

  // Instantiate the module under test
  Main_Decoder dut (
    .op(op),
    .funct(funct),
    .branch(branch),
    .reg_w(reg_w),
    .mem_w(mem_w),
    .mem_to_reg(mem_to_reg),
    .alu_src(alu_src),
    .alu_op(alu_op),
    .imm_src(imm_src),
    .reg_src(reg_src)
  );

  // Stimulus
  initial begin
    // Testcase 1 - op = 2'b00, funct[5] = 2'd0
    op = 2'b00;
    funct = 6'b000000;
    #100;
    

    // Testcase 2 - op = 2'b00, funct[5] = 2'd1
    op = 2'b00;
    funct = 6'b100000;
    #100;
	 
    // Testcase 3 - op = 2'b01, funct[0] = 2'd0
    op = 2'b01;
    funct = 6'b000000;
    #100;
	 
    // Testcase 4 - op = 2'b01, funct[0] = 2'd1
    op = 2'b01;
    funct = 6'b000001;
    #100;
	 
    // Testcase 5 - op = 2'b10
    op = 2'b10;
    funct = 6'b000000;
    #100;

	 

  end

endmodule
