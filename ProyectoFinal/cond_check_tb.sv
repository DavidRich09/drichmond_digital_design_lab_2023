module cond_check_tb;

  // Inputs
  logic [3:0] Cond;
  logic [3:0] Flags;

  // Output
  logic CondEx;

  // Instantiate the module under test
  cond_check dut (
    .Cond(Cond),
    .Flags(Flags),
    .CondEx(CondEx)
  );

  // Stimulus
  initial begin
    // Testcase 1 - EQ
    Cond = 4'b0000;
    Flags = 4'b0000;
    #50;


    // Testcase 2 - NE
    Cond = 4'b0001;
    Flags = 4'b0000;
    #50;

    // Testcase 3 - CS
    Cond = 4'b0010;
    Flags = 4'b0010;
    #50;


    // Testcase 4 - CC
    Cond = 4'b0011;
    Flags = 4'b0010;
    #50;

    // Testcase 5 - MI
    Cond = 4'b0100;
    Flags = 4'b1000;
    #50;


    // Testcase 6 - PL
    Cond = 4'b0101;
    Flags = 4'b0000;
    #50;

    // Testcase 7 - VS
    Cond = 4'b0110;
    Flags = 4'b0100;
    #50;


    // Testcase 8 - VC
    Cond = 4'b0111;
    Flags = 4'b0100;
    #50;

    // Testcase 9 - HI
    Cond = 4'b1000;
    Flags = 4'b0010;
    #50;


    // Testcase 10 - LS
    Cond = 4'b1001;
    Flags = 4'b0001;
    #50;


    // Testcase 11 - GE
    Cond = 4'b1010;
    Flags = 4'b0101;
    #50;

    // Testcase 12 - LT
    Cond = 4'b1011;
    Flags = 4'b1010;
    #50;


    // Testcase 13 - GT
    Cond = 4'b1100;
    Flags = 4'b0110;
    #50;
  
    // Testcase 14 - LE
    Cond = 4'b1101;
    Flags = 4'b1111;
    #50;
   

  end

endmodule
