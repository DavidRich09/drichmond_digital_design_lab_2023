module decodificador_bcd (input logic A, B, C, D,
                          output logic [4:0] s, 
								  output logic [6:0] dis);

    assign s[4] = A & B | A & C;
    assign s[3] = A & ~B & ~C;
    assign s[2] = ~A & B | B & C;
    assign s[1] = A & B & ~C | ~A & C;
    assign s[0] = D;
	 
	 
	 always_comb  begin
		case(s)
			5'b00000: dis = 7'b0000001; //0
			5'b00001: dis = 7'b1001111; //1
			5'b00010: dis = 7'b0010010; //2
			5'b00011: dis = 7'b0000110; //3
			5'b00100: dis = 7'b1001100; //4
			5'b00101: dis = 7'b0100100; //5
			5'b00110: dis = 7'b0100000; //6
			5'b00111: dis = 7'b0001111; //7
			5'b01000: dis = 7'b0000000; //8
			5'b01001: dis = 7'b0000100; //9
			5'b10000: dis = 7'b0001000; //A
			5'b10001: dis = 7'b1100000; //b
			5'b10010: dis = 7'b0110001; //C
			5'b10011: dis = 7'b1000010; //d
			5'b10100: dis = 7'b0110000; //e
			5'b10101: dis = 7'b0111000; //F
			default:  dis = 7'b1111111;
    endcase
  end
	 
	 
endmodule
