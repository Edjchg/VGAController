module sleep (input logic clk,

					output logic [9:0]contador);
					
			initial begin
			
			contador <= 10'd0;
			
			end
			
			always @(posedge clk)
			begin
				
				if (contador == 200) begin
				
					contador <= 10'd0;
				
				end else begin 
				
					contador <= contador + 10'd1;
				
				end
			
			end

endmodule

