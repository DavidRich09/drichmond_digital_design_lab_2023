module Processor_Image 	

(
	input logic clk,rst,
	output logic vga_hsync,vga_vsync,sync_blank,sync_b,
	output logic [7:0]red,green,blue,
	output logic clk_25
);

	logic [9:0]hs;
	logic [9:0]vs;
	
	clkdiv div(clk,clk_25);
			
	ControladorGrafico cgr(clk_25,vga_hsync,vga_vsync,sync_blank,sync_b,hs,vs);



endmodule