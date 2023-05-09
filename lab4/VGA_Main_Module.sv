module VGA_Main_Module
(

	input logic clk,rst,win,lose,
	input logic [15:0][3:0] cell_matrix,
	output logic vga_hsync,vga_vsync,sync_blank,sync_b,
	output logic [7:0]red,green,blue,
	output logic clk_25
	 
);

	logic [9:0]hs;
	logic [9:0]vs;
	
	clkdiv div(clk,clk_25);
			
	ControladorGrafico cgr(clk_25,vga_hsync,vga_vsync,sync_blank,sync_b,hs,vs);
	
	PintarPantalla pintor(rst,win,lose,hs,vs,cell_matrix,red,green,blue);


endmodule
