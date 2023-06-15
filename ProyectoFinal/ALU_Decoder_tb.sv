module ALU_Decoder_tb;

  // Inputs
  logic alu_op;
  logic [5:0] funct;

  // Outputs
  logic [3:0] alu_control;
  logic [1:0] flag_w;

  // Instantiate the module under test
  ALU_Decoder dut (
    .alu_op(alu_op),
    .funct(funct),
    .alu_control(alu_control),
    .flag_w(flag_w)
  );

  // Stimulus
  initial begin
    // Testcase 1 - alu_op = 1'b1, funct = 6'b010000
    alu_op = 1'b1;
    funct = 6'b010000;
    #100;

    // Testcase 2 - alu_op = 1'b1, funct = 6'b001000
    alu_op = 1'b1;
    funct = 6'b001000;
    #100;
	 
    // Testcase 3 - alu_op = 1'b1, funct = 6'b000000
    alu_op = 1'b1;
    funct = 6'b000000;
    #100;
	 

    // Testcase 4 - alu_op = 1'b1, funct = 6'b110000
    alu_op = 1'b1;
    funct = 6'b110000;
    #100;

    // Testcase 5 - alu_op = 1'b1, funct = 6'b111000
    alu_op = 1'b1;
    funct = 6'b111000;
    #100;

    // Testcase 6 - alu_op = 1'b1, funct = 6'b111100
    alu_op = 1'b1;
    funct = 6'b111100;
    #100;

    // Testcase 7 - alu_op = 1'b0 (default)
    alu_op = 1'b0;
    funct = 6'bxxxxxx;
    #100;

  end

endmodule
