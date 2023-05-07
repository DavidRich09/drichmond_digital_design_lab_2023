module maquina_Estados_tb;

	logic clk = 0;
	logic reset = 0;
	logic up = 0;      
	logic down = 0;
	logic left = 0;
	logic right = 0;
	logic logic_lose_input = 0;
	logic logic_win_input = 0;
	logic reset_state = 0;
	logic up_state = 0;
	logic down_state = 0;
	logic left_state = 0;
	logic right_state = 0;
	logic lose_state = 0;
	logic win_state = 0;


	maquina_Estados modulo_Estados

  
	(
	  .clk(clk),
	  .reset(reset),
	  .up(up),
	  .down(down),
	  .left(left),
	  .right(right),
	  .logic_lose_input(logic_lose_input),
	  .logic_win_input(logic_win_input),
	  .reset_state(reset_state),
	  .up_state(up_state),
	  .down_state(down_state),
	  .left_state(left_state),
	  .right_state(right_state),
	  .lose_state(lose_state),
	  .win_state(win_state)
	);
	


	initial begin
		
		reset = 1;
		clk = 1;
		#10;
		clk = 0;
		reset = 0;
		up = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		up = 0;
		down = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		down = 0;
		left = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		left = 0;
		right = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		right = 0;
		reset = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		reset = 0;
		up = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		up = 0;
		logic_lose_input = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		logic_lose_input = 0;
		right = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		reset = 1;
		right = 0;
		#10;
		clk = 1;
		#10;
		clk = 0;
		reset = 0;
		right = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		right = 0;
		logic_win_input = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		logic_win_input = 0;
		right = 1;
		#10;
		clk = 1;
		#10;
		clk = 0;
		#10;
		
	end

endmodule