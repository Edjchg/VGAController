module deco_Morty(input logic[2:0] color,	
                 output logic [23:0] RGB);
				 
				 
//0x00000000 -> 0 -> fondo
//0xff000000 -> 1 -> negro
//0xff536d75 -> 2 -> cafe
//0xffb5eeff -> 3 -> crema
//0xffffffff -> 4 -> blanco
//0xff0000ff -> 5 -> rojo



	always_comb
	case (color)
		3'd0: RGB = 24'hAAAAAA; //fondo
		3'd1: RGB = 24'h000000; //negro
		3'd2: RGB = 24'hD2B48C; //cafe
		3'd3: RGB = 24'hFFE4B5; //color crema
		3'd4: RGB = 24'hFFFFFF; //blanco
		3'd5: RGB = 24'hFF4500; //rojo
		3'd6: RGB = 24'hADFF2F; //verde
		3'd7: RGB = 24'hAAAAAA; //fondo
	
	endcase

endmodule