module cond_logic_tb;

    // Inputs
    logic clk;
    logic reset;
    logic [3:0] Cond;
    logic ALUFlags;
    logic [1:0] FlagW;
    logic pcs;
    logic reg_w;
    logic mem_w;
	 logic PCSrc;
	 logic RegWrite;
	 logic MemWrite;
	 
	 logic [31:0] test = 32'b11100010100010001000000000000001;
    
    
    cond_logic CL(clk, reset, Cond, ALUFlags,flag_w,pcs,reg_w,mem_w, PCSrc, RegWrite, MemWrite);
    
    // Stimulus
    initial begin
	 
      clk = 1'b0;
		clk = 1'b1;
		reset = 1'b0;
		
		Cond = test[31:28];
		ALUFlags = 4'b0000;
		FlagW = 2'b11;
		pcs = 1'b0;
		mem_w = 1'b1;
		reg_w = 1'b0;
        
      #100;
		
		clk = 1'b0;
		clk = 1'b1;
		reset = 1'b0;
		
		Cond = test[31:28];
		ALUFlags = 4'b0000;
		FlagW = 2'b11;
		pcs = 1'b0;
		mem_w = 1'b1;
		reg_w = 1'b0;

    end
    

endmodule
