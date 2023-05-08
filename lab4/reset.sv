module reset (
    input logic reset_input,
    input logic [15:0][3:0] cell_matrix_in,
    output logic [15:0][3:0] cell_matrix_out
);

    logic [15:0][3:0] temp_input;
    logic [15:0][3:0] temp_matrix1, temp_matrix2;
    integer i;
     
    add_random random_inst_1 (.cell_matrix_in(temp_input), .cell_matrix_out(temp_matrix1));
    add_random random_inst_2 (.cell_matrix_in(temp_matrix1), .cell_matrix_out(temp_matrix2));

    always @(posedge reset_input) begin

        for (i=0; i<16; i=i+1) begin
            temp_input[i] = 4'd0;
        end

        random_inst_1.cell_matrix_in <= temp_input;   // asignar temp_input a la entrada de random_inst_1
        random_inst_2.cell_matrix_in <= temp_matrix1;  // asignar la salida de random_inst_1 a la entrada de random_inst_2
        cell_matrix_out <= temp_matrix2;              // asignar la salida de random_inst_2 a la salida del modulo reset
    end
endmodule
