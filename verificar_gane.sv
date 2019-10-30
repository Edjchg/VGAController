module verificar_gane ( input logic [8:0] player,
								output logic gane );
		
			
		assign gane = (player == 9'b111000000|
							player == 9'b000111000|
							player == 9'b000000111|
							player == 9'b100100100|
							player == 9'b010010010|
							player == 9'b001001001|
							player == 9'b100010001|
							player == 9'b001010100);
		
			
endmodule