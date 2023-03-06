
module countdown_2bits_tb;


parameter CLK = 10; 

	reg clk;
	reg reset;
	wire [1:0] countdownOut2bits;
	wire [3:0] countdownOut4bits;
	wire [5:0] countdownOut6bits;

	countdown_nbits #(.N(2)) countdown2bits
	
	(
	  .clk(clk),
	  .reset(reset),
	  .countdownOut(countdownOut2bits)
	);
	
	countdown_nbits #(.N(4)) countdown4bits
	
	(
	  .clk(clk),
	  .reset(reset),
	  .countdownOut(countdownOut4bits)
	);

	countdown_nbits #(.N(6)) countdown6bits
	
	(
	  .clk(clk),
	  .reset(reset),
	  .countdownOut(countdownOut6bits)
	);

	initial begin
	
		$display("Testing countdown timers...");
		clk = 1'b0;
		reset = 1'b0;
		
		repeat (120) begin
			  #5 clk = !clk;
		end

		#10;
		
		$display("activating reset...");
		reset = 1'b1;
		
		assert (countdownOut2bits === 3) else $error ("2-bit countdown reset failed!!!!");
		assert (countdownOut4bits === 15) else $error ("4-bit countdown reset failed!!!!");
		assert (countdownOut6bits === 63) else $error ("6-bit countdown reset failed!!!!");
		
		repeat (20) begin
			  #5 clk = !clk;
		end
		
		#5;
		
		$display("Countdown timer test finished!");
	

	end

endmodule