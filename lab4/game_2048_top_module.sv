module game_2048_top_module 	

(
	input logic win_a,
	input logic win_b,
	input logic win_c,
	input logic win_d,
	input logic reset_switch_signal,
	input logic up_button_signal,        
	input logic down_button_signal,
	input logic left_button_signal,
	input logic right_button_signal,
	input logic ME_clk,clk,  
	
	output logic vga_hsync,vga_vsync,sync_blank,sync_b,
	output logic [7:0]red,green,blue,
	output logic clk_25
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
	logic [12:0] points_out;
	
	maquina_Estados ME(	ME_clk,
								reset_switch_signal,
								~up_button_signal,        
								~down_button_signal,
								~left_button_signal,
								~right_button_signal,
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
								win_a,
								win_b,
								win_c,
								win_d,
								up_State_Wire,        
								down_State_Wire,
								left_State_Wire,
								right_State_Wire,
								reset_State_Wire,
								logic_lose_Wire,
								logic_win_Wire,
								points_out,
								cell_matrix_bus   
								
							);
							
	VGA_Main_Module VGA(

								clk,
								reset_State_Wire,
								win_state_Wire,
								lose_state_Wire,
								cell_matrix_bus,
								vga_hsync,
								vga_vsync,
								sync_blank,
								sync_b,
								red,
								green,
								blue,
								clk_25
								 
							);

endmodule