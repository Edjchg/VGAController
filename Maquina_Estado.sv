module Maquina_Estado (input logic clk, rst,d,
							  input logic [8:0] p1,p2,
							  output [1:0] gano);

logic [2:0] state, next;
logic x;

	

	FF #(3)ffs (clk,rst,next,state);
	logica_juego lg (state,p1,p2,d,rst,x);
	estado_siguiente ns (x,state,next);
	logica_salida outs (x,state,gano);
	
	



endmodule