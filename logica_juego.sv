module logica_juego (input logic [2:0]state,
							input logic [8:0] p1,p2,
							input logic d,rst,
							output logic x);
	logic gane1, valida1, gane2, valida2;
	logic [8:0] pad;
	verificar_gane vg1 (p1,gane1);
	jugadaValida jv1 (pad,p1,valida1);
	verificar_gane vg2 (p2,gane2);
	jugadaValida jv2 (pad,p2,valida2);
	always_comb
	case(state)
		0: x = d;
		1: x = valida1;
		2: x = gane1;
		3: x = d;
		4: x = valida2;
		5: x = gane2;
		6: x = rst;
		7: x = rst;
		default: x = 0;
	endcase
	assign pad = p1 | p2;

endmodule
