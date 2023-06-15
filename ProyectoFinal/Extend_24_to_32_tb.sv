module Extend_24_to_32_tb;

  // Inputs
  logic [23:0] in;
  logic [1:0] ImmSrc;

  // Outputs
  logic [31:0] out;

  // Instantiate the module under test
  Extend_24_to_32 dut (
    .in(in),
    .ImmSrc(ImmSrc),
    .out(out)
  );


  // Stimulus
  initial begin
  
    // Testcase 1 - ImmSrc = 2'b00
    in = 24'b101010101010101010101010;
    ImmSrc = 2'b00;
    #100;

    // Testcase 2 - ImmSrc = 2'b01
    in = 24'b110011001100110011001100;
    ImmSrc = 2'b01;
    #100;

    // Testcase 3 - ImmSrc = 2'b10
    in = 24'b111100001111000011110000;
    ImmSrc = 2'b10;
    #100;

    // Testcase 4 - Default case
    in = 24'b010101010101010101010101;
    ImmSrc = 2'b11;
    #100;
	 

  
  end


endmodule
