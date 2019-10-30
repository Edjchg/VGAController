module FF #(parameter N = 2)
						(input logic clk, reset,
						input logic [N-1:0] D,
						output logic [N-1:0] Q);
		
						
		always_ff @(posedge clk, posedge reset)
		
		if (reset) Q <= 'b0; // <= no bloquea, si pongo = bloquea
		
		else Q <= D;
		

						
endmodule