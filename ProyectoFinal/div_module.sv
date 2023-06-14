module div_module #(parameter N=4) (
   input logic [N-1:0] a,        
   input logic [N-1:0] b,
   output logic [N-1:0] result,
   output logic neg_flag,
   output logic zr_flag,
   output logic cry_flag,
   output logic of_flag
);

   always_comb begin
      if (b != 0) begin
         result = a / b;
         neg_flag = result[N-1];
         zr_flag = (result == 0);
         cry_flag = '0;
         of_flag = '0;
      end else begin
         result = '0;
         neg_flag = '0;
         zr_flag = '0;
         cry_flag = '0;
         of_flag = '1;
      end
   end
	
endmodule