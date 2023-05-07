module game_2048_top_module 	

(
	input logic reset_switch_signal,
	input logic up_button_signal,        
	input logic down_button_signal,
	input logic left_button_signal,
	input logic right_button_signal,
	input logic ME_clk  
	// output cosas de vga ???? no sé @Sergio ahí usted hace la vara
);
	
	logic reset_State_Wire;
	logic logic_lose_Wire;
	logic logic_win_Wire;
	logic lose_state_Wire;
	logic win_state_Wire;
   logic up_State_Wire;       
	logic down_State_Wire;
	logic left_State_Wire;
	logic right_State_Wire;
	
	logic [15:0][3:0] cell_matrix_bus;
	
	maquina_Estados ME(	clk,
								reset_switch_signal,
								up_button_signal,        
								down_button_signal,
								left_button_signal,
								right_button_signal,
								logic_lose_Wire,
								logic_win_Wire,
								
								reset_State_Wire,
								up_State_Wire,        
								down_State_Wire,
								left_State_Wire,
								right_State_Wire,
								lose_state_Wire,
								win_state_Wire
							);

	logic_Module 	LM(
								up_State_Wire,        
								down_State_Wire,
								left_State_Wire,
								right_State_Wire,
								logic_lose_Wire,
								logic_win_Wire,
								
								cell_matrix_bus
								
								//input logic clk (????)   
								
							);
	
	VGA_Main_Module VGA(

								cell_matrix_bus
								
								//output logic ????? @Sergio ahí ve que hace
								 
							);

endmodule