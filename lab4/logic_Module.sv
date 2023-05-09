module logic_Module
(
	input logic win_a,
	input logic win_b,
	input logic win_c,
	input logic win_d,
	input logic up_state,        
	input logic down_state,
	input logic left_state,
	input logic right_state,
	input logic reset_state,
	output logic lose_output,
	output logic win_output,
	output logic [12:0] points_out,
	output logic [15:0][3:0] cell_matrix_out
);
	
	logic [12:0] points;
	logic [12:0] points_Up_Wire;
	logic [12:0] points_Down_Wire;
	logic [12:0] points_Right_Wire;
	logic [12:0] points_Left_Wire;
	logic [12:0] points_Direction_Wire;
	
	logic [15:0][3:0] cell_matrix;
	logic [15:0][3:0] cell_matrix_Final_Wire;
	logic [15:0][3:0] cell_matrix_WoL_Wire;
	logic [15:0][3:0] cell_matrix_Direction_Wire;
	logic [15:0][3:0] cell_matrix_Up_Wire;
	logic [15:0][3:0] cell_matrix_Down_Wire;
	logic [15:0][3:0] cell_matrix_Right_Wire;
	logic [15:0][3:0] cell_matrix_Left_Wire;
	logic [15:0][3:0] cell_matrix_Reset_Wire;
	

	up_slide UM		(	up_state,
							points,
							cell_matrix,
							cell_matrix_Up_Wire,
							points_Up_Wire
						);
	
	down_slide DM	(	down_state,
							points,
							cell_matrix,
							cell_matrix_Down_Wire,
							points_Down_Wire
						);

	right_slide RM	(	right_state,
							points,
							cell_matrix,
							cell_matrix_Right_Wire,
							points_Right_Wire
						);


	left_slide LM	(	left_state,
							points,
							cell_matrix,
							cell_matrix_Left_Wire,
							points_Left_Wire
						);
								
	
	reset ResM		(	reset_state,
							cell_matrix,
							cell_matrix_Reset_Wire
						);
						
	win_or_lose WoLM	(	win_a,
								win_b,
								win_c,
								win_d,
								cell_matrix_Direction_Wire,
								cell_matrix_WoL_Wire,
								win_output,
								lose_output
							);

	add_random RandM	(	
								cell_matrix_WoL_Wire,
								cell_matrix_Final_Wire
							);			

	
	always @(posedge up_state or posedge down_state or posedge left_state or posedge right_state or posedge reset_state) begin
		
		#100;
		$display("cell_matrix_Up_Wire 1: %b", cell_matrix_Up_Wire);
		$display("cell_matrix_Down_Wire 1: %b", cell_matrix_Down_Wire);
		$display("cell_matrix_Left_Wire 1: %b", cell_matrix_Left_Wire);
		$display("cell_matrix_Right_Wire 1: %b", cell_matrix_Right_Wire);

		if(up_state == 1) begin
			$display("cell_matrix_Up_Wire 2: %b", cell_matrix_Up_Wire);
			cell_matrix_Direction_Wire = cell_matrix_Up_Wire;
			points_Direction_Wire = points_Up_Wire;
		end
		else if (down_state == 1) begin
			$display("cell_matrix_Down_Wire 2: %b", cell_matrix_Down_Wire);
			cell_matrix_Direction_Wire = cell_matrix_Down_Wire;
			points_Direction_Wire = points_Down_Wire;
		end
		else if (right_state == 1) begin
			$display("cell_matrix_Right_Wire 2: %b", cell_matrix_Right_Wire);
			cell_matrix_Direction_Wire = cell_matrix_Right_Wire;
			points_Direction_Wire = points_Right_Wire;
		end
		else if (left_state == 1) begin
			$display("cell_matrix_Left_Wire 2: %b", cell_matrix_Left_Wire);
			cell_matrix_Direction_Wire = cell_matrix_Left_Wire;
			points_Direction_Wire = points_Left_Wire;
		end
		else begin
			points_Direction_Wire = 13'd0;
		end
		
		#100;
		
		if (reset_state == 1) begin
			cell_matrix = cell_matrix_Reset_Wire;
		end
		else begin
			cell_matrix = cell_matrix_Final_Wire;
		end
		
		cell_matrix_out = cell_matrix;
		points_out = points_Direction_Wire;
		points = points_Direction_Wire;
				
		
	end
	



endmodule