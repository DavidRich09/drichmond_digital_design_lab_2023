`timescale 1ns / 1ps
module ARMV4_Processor_tb;

  
  // Señales de entrada
  logic clk;
  
  // Instancia del módulo bajo prueba
  ARMV4_Processor dut (
    .clk(clk)
    // Conecta el resto de señales de entrada y salida según sea necesario
  );
  
  // Generación de estímulos
  initial begin

	 
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 #1
	 clk = 0; 
	 #1
	 clk = 1;
	 
	 
  end

  
endmodule
