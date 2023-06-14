module mult_module #(parameter N=4) (
   input logic [N-1:0] a,        
   input logic [N-1:0] b,
   output logic [N-1:0] result,
   output logic neg_flag,
   output logic zr_flag,
   output logic cry_flag,
   output logic of_flag
);
   logic [2*N-1:0] temp;
  
   always_comb begin
      temp = a * b;
      
      if (temp > 255) begin
         temp = temp - 255;
      end
      
      result = temp[N-1:0];
      neg_flag = 'b0;
      zr_flag = (result == 0);
      cry_flag = (temp > ((1 << (2*N)) - 1));
      of_flag = ((a[N-1] == b[N-1]) && (result[N-1] != a[N-1]));
   end
endmodule
