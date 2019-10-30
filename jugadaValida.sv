module jugadaValida (input logic [8:0] game, player,
							output logic valida);

	assign valida = ((game & player) != game);
	
endmodule


