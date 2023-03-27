module switch(input button, output s);

    logic sAux = 1'b0;

    always_ff @(posedge button) begin
        if(sAux)
            sAux= 1'b0;
        else
            sAux = 1'b1;
    end

    assign s = sAux;

endmodule
