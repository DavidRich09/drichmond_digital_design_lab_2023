module Add4Bit #(parameter N = 4) (
    input logic [N-1:0] a,
    output logic [N-1:0] s
);

    assign s = a + 4;

endmodule