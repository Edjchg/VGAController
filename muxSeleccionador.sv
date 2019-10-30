module muxSeleccionador ( input logic [9:0] posX,posY,cuentaX,cuentaY,
								 input clk,
								 input logic [1:0]contador_seleccionador,
                         output visible, 
								 output logic [23:0]rgb);
		//logic posx,posy;
		
		logic visible_sprite1,visible_sprite2;
		logic [23:0] rgb1, rgb2;
	
		//logic sprite1,sprite2,nada;

		//contadorPushButton contador01 (clk, boton_rst, boton, contador);
		
								 
		sprite_Rick  Jugador1 (clk, cuentaX, cuentaY, posX, posY,rgb1,visible_sprite1);
			
		sprite_Morty Jugador2 (clk, cuentaX, cuentaY, posX, posY,rgb2,visible_sprite2);
								 
		

		always @( contador_seleccionador[0] or contador_seleccionador[1]) begin
			
			if (contador_seleccionador  == 2'b00) begin
				visible <= 1'b0;
				
			end
			
			if(contador_seleccionador  == 2'b01)begin
				visible <= visible_sprite1;
			   rgb <= rgb1;
			end
			
			if (contador_seleccionador  == 2'b10)begin
			  visible <= visible_sprite2;
			   rgb <= rgb2;
			
			end
			
			
		

			
		
		end

endmodule
