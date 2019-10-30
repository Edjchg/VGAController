module botonMove #(DER_INICIAL = 10'd0,
						 IZQ_INICIAL = 10'd100,
						 UP_INICIAL  = 10'd100,
						 DOWN_INICIAL= 10'd150)
					  (input logic clk,
					  input logic move,
						
						output logic [11:0]borde_izq,
						output logic [11:0]borde_der,
						output logic [11:0]borde_up,
						output logic [11:0]borde_down);
			
			initial begin			
			borde_izq = IZQ_INICIAL;
			borde_der = DER_INICIAL;
			borde_up = UP_INICIAL;
			borde_down = DOWN_INICIAL;
			end	
			always @(posedge clk)
			begin
				if(clk) begin
					if (move) begin
						borde_der++;
						borde_izq++;
						
						if ( borde_izq == 640) begin
							borde_izq <= IZQ_INICIAL;
							borde_der <= DER_INICIAL;
							
							borde_up ++;
							
							borde_down ++;
							
						end
						
						if (borde_down == 480) begin
							borde_izq <= IZQ_INICIAL;
							borde_der <= DER_INICIAL;
							borde_up  <= UP_INICIAL;
							
							borde_down <= DOWN_INICIAL;
							
						end
						
					end 
				
				end
				
			end

		


endmodule
