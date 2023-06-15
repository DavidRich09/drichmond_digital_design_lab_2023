module Register_File_tb;

    // Parámetros del testbench
    logic clk;
    logic WE3;
    logic [3:0] A1, A2, A3;
    logic [31:0] WD3, R15;
    logic [31:0] RD1, RD2;

    // Instancia del módulo bajo prueba
    RegisterFile dut (
        .clk(clk),
        .WE3(WE3),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .WD3(WD3),
        .R15(R15),
        .RD1(RD1),
        .RD2(RD2)
    );

    // Generación de clock
    always begin
        #100 clk = ~clk;
    end

    // Inicialización de señales
    initial begin
        clk = 0;
        WE3 = 0;
        A1 = 0;
        A2 = 0;
        A3 = 0;
        WD3 = 0;
        R15 = 0;

        // Espera inicial antes de aplicar entradas
        #100;

        // Escritura en registro A3
        WE3 = 1;
        A3 = 4;
        WD3 = 32'h12345678;

        // Espera antes de leer registros
        #100;

        // Lectura de registros A1 y A2
        A1 = 4;
        A2 = 4;

        // Espera antes de finalizar simulación
        #100;
        // Escritura en registro R2
        WE3 = 1;
        A3 = 2;
        WD3 = 32'habcdef01;

        // Espera antes de leer registros nuevamente
        #100;

        // Lectura de registros A1 y A2
        A1 = 4;
        A2 = 10;

        // Espera antes de finalizar simulación
        #100;
        $finish;
    end

endmodule