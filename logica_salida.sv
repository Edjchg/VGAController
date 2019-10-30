module logica_salida (input logic x,
							 input logic [2:0] state,
							 output logic [1:0] salida);
							 

always_comb
	case(state)
		0: salida = 2'b00; 
		1: salida = 2'b00; 
		2: salida = 2'b00;
		3: salida = 2'b00; 
		4: salida = 2'b00; 
		5: salida = 2'b00;
		6: salida = 2'b10; 
		7: salida = 2'b01; 
		
		default: salida = 2'b00;
	endcase
				
endmodule