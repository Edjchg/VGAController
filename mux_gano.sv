module mux_gano (input logic [1:0] gano,
						output logic output_gano
						); 
			
			
			always @(gano[0] or gano[1])begin
				if (gano == 2'b10)begin
					output_gano <= 1;
				end
				
				if(gano == 2'b01)begin
					output_gano <= 0;
				end
			end
endmodule
