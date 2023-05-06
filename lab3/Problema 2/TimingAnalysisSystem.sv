module TimingAnalysisSystem #(parameter N=32) (input[N-1:0] a, b, input [3:0] s, input clk, rst, output [N-1:0] output_reg, output [3:0] flags_aux_out);
	
	logic [3:0] sel_reg_input;
	logic [N-1:0] a_reg_input;
	logic [N-1:0] b_reg_input;
	logic [3:0] flags_aux;
	logic [N-1:0] r_aux;
	
	//Creacion del Registro Input
	register_input #(.N(N)) regIn(s,a,b,clk, rst, a_reg_input, b_reg_input ,sel_reg_input);

	//ALU
	ALU #(.N(N)) DUT(
		.a(a_reg_input),
		.b(b_reg_input),
		.s(sel_reg_input),
		.neg_flag(flags_aux[0]),
		.zr_flag(flags_aux[1]),
		.cry_flag(flags_aux[2]),
		.of_flag(flags_aux[3]),
		.result(r_aux)
	);
	
	//Creacion del Registro oUTPUT
	register_output #(.N(N)) regOut(r_aux, clk, rst, flags_aux[0], flags_aux[1], flags_aux[2], flags_aux[3], flags_aux_out[0], flags_aux_out[1], flags_aux_out[2], flags_aux_out[3], output_reg);

endmodule 