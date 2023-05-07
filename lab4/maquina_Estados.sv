module maquina_Estados

(
	input logic clk,  
	input logic reset,
	input logic up,        
	input logic down,
	input logic left,
	input logic right,
	input logic logic_lose_input,
	input logic logic_win_input,
	
	output logic reset_state,
	output logic up_state,        
	output logic down_state,
	output logic left_state,
	output logic right_state,
	output logic lose_state,
	output logic win_state   
	
);

logic [2:0] state, next_state;

//actual state logic
always_ff @ (posedge clk or posedge reset)
	if (reset) state = 3'd0;
	else
		state = next_state;

//next state logic
always_comb
		case (state)
		
			3'd0: if(up) next_state = 3'd1; 
					else if (down) next_state = 3'd2;
					else if (left) next_state = 3'd3;
					else if (right) next_state = 3'd4;
					else next_state = state ;
		
			3'd1: if(logic_win_input) next_state = 3'd5; 
					else if (logic_lose_input) next_state = 3'd6;
					else if (up) next_state = 3'd1;
					else if (down) next_state = 3'd2;
					else if (left) next_state = 3'd3;
					else if (right) next_state = 3'd4;
					else next_state = state;
			
			3'd2: if(logic_win_input) next_state = 3'd5; 
					else if (logic_lose_input) next_state = 3'd6;
					else if (up) next_state = 3'd1;
					else if (down) next_state = 3'd2;
					else if (left) next_state = 3'd3;
					else if (right) next_state = 3'd4;
					else next_state = state;
					
			3'd3: if(logic_win_input) next_state = 3'd5; 
					else if (logic_lose_input) next_state = 3'd6;
					else if (up) next_state = 3'd1;
					else if (down) next_state = 3'd2;
					else if (left) next_state = 3'd3;
					else if (right) next_state = 3'd4;
					else next_state = state;
					
			3'd4: if(logic_win_input) next_state = 3'd5; 
					else if (logic_lose_input) next_state = 3'd6;
					else if (up) next_state = 3'd1;
					else if (down) next_state = 3'd2;
					else if (left) next_state = 3'd3;
					else if (right) next_state = 3'd4;
					else next_state = state;
			
			3'd5: next_state = 3'd5;
					
			3'd6: next_state = 3'd6;
					
			default: next_state = 3'd0;
		endcase

//output logic
assign reset_state = (state == 3'd0);
assign up_state = (state == 3'd1);	
assign down_state = (state == 3'd2);
assign right_state = (state == 3'd3);	
assign left_state = (state == 3'd4);
assign win_state = (state == 3'd5);	
assign lose_state = (state == 3'd6);	

endmodule


