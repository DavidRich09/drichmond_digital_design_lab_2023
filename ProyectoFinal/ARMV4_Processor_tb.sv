`timescale 1ns / 1ps
module ARMV4_Processor_tb;

  
  // Señales de entrada
  logic clk;
  logic rst;
  
  // Instancia del módulo bajo prueba
  ARMV4_Processor dut (
    .clk(clk),
	 .rst(rst)
    // Conecta el resto de señales de entrada y salida según sea necesario
  );
  
  // Generación de estímulos
  initial begin
	
rst = 0; 
	 #10
	 rst = 1;
	 #10
	 rst = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0; 
	 #10
	 clk = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0; 
	 #10
	 clk = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0; 
	 #10
	 clk = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0; 
	 #10
	 clk = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0; 
	 #10
	 clk = 0; 
	 #10
	 clk = 1;
	 #10
	 clk = 0;
	 
	 
	 
  end

  
endmodule
