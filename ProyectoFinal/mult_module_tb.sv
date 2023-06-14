module mult_module_tb;

   // Parámetros del módulo
   localparam N = 4;

   // Señales del test bench
   logic [N-1:0] a;
   logic [N-1:0] b;
   logic [N-1:0] result;
   logic neg_flag;
   logic zr_flag;
   logic cry_flag;
   logic of_flag;

   // Instancia del módulo bajo prueba
   mult_module #(N) dut (
      .a(a),
      .b(b),
      .result(result),
      .neg_flag(neg_flag),
      .zr_flag(zr_flag),
      .cry_flag(cry_flag),
      .of_flag(of_flag)
   );

   // Clock
   initial begin
      #100;
      a = 3;  // Valor de entrada a
      b = 4;  // Valor de entrada b
      #100;
      a = 7;  // Otro valor de entrada a
      b = 5;  // Otro valor de entrada b
      // Agrega más casos de prueba según sea necesario
		#100;
      a = 7;  // Otro valor de entrada a
      b = 5;  // Otro valor de entrada b
   end


endmodule