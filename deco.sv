module deco (input logic [3:0] posicion_input,
				input logic boton,
				 output logic cero,uno,dos,tres,cuatro,cinco, seis,siete,ocho);
		initial begin
			cero <= 1'b0;
			uno <= 1'b0;
			dos <= 1'b0;
		   tres <= 1'b0;
			cuatro <= 1'b0;
			cinco <= 1'b0;
			seis <= 1'b0;
			siete <= 1'b0;
			ocho <= 1'b0;
			
		end
		
		always @(posicion_input[0] or posicion_input[1] or posicion_input[2] or posicion_input[3] or boton ) begin
		
			if(posicion_input == 4'b00000 && boton == 1 )begin // para casilla 0
				
					cero <= 1'b1;
					uno <= 1'b0;
					dos <= 1'b0;
					tres <= 1'b0;
					cuatro <= 1'b0;
					cinco <= 1'b0;
					seis <= 1'b0;
					siete <= 1'b0;
					ocho <= 1'b0;
			end else if (posicion_input == 4'b10000 )begin // para casilla 0
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			
			
			end else if(posicion_input == 4'b0001 && boton == 1)begin //Casilla 1
			
				uno <= 1'b1;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0001)begin // Casilla 1
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			end else if(posicion_input == 4'b0010 && boton == 1)begin //Casilla 2
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b1;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0010)begin // Casilla 2
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			end else if(posicion_input == 4'b0011 && boton == 1)begin //Casilla 3
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b1;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0011)begin // Casilla 3
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			end else if(posicion_input == 4'b0100 && boton == 1)begin //Casilla 4
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b1;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0100)begin // Casilla 4
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			end else if(posicion_input == 4'b0101 && boton == 1)begin //Casilla 5
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b1;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0101)begin // Casilla 5
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			end else if(posicion_input == 4'b0110 && boton == 1)begin //Casilla 6
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b1;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0110)begin // Casilla 6
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0111 && boton == 1)begin //Casilla 7
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b1;
				ocho <= 1'b0;
				
			end else if(posicion_input == 4'b0111)begin // Casilla 7
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			end else if(posicion_input == 4'b1000 && boton == 1)begin //Casilla 8
			
				uno <= 1'b0;
				cero <= 1'b0;
				
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b1;
				
			end else if(posicion_input == 4'b1000)begin // Casilla 8
			
				cero <= 1'b0;
				uno <= 1'b0;
				dos <= 1'b0;
				tres <= 1'b0;
				cuatro <= 1'b0;
				cinco <= 1'b0;
				seis <= 1'b0;
				siete <= 1'b0;
				ocho <= 1'b0;
			
			
			
			
			
			end else begin
			
			cero <= 1'b0;
			uno <= 1'b0;
			dos <= 1'b0;
		   tres <= 1'b0;
			cuatro <= 1'b0;
			cinco <= 1'b0;
			seis <= 1'b0;
			siete <= 1'b0;
			ocho <= 1'b0;
			
			
			end
			
		end
		/*
		//hice cambio de uno del boton...
		always @(posicion_input) begin			
				case({boton,posicion_input})
					5'b10000 : cero <= 1'b1;
								  
					5'b10001 : uno <= 1'b1;
					5'b10010 : dos <= 1'b1;
					5'b10011 : tres <= 1'b1;
					5'b10100 : cuatro <= 1'b1;
					5'b10101 : cinco <= 1'b1;
					5'b10110 : seis <= 1'b1;
					5'b10111 : siete <= 1'b1;
					5'b11000 : ocho <= 1'b1;
					
					
					5'b00000 : cero <= 1'b0;
					5'b00001 : uno <= 1'b0;
					5'b00010 : dos <= 1'b0;
					5'b00011 : tres <= 1'b0;
					5'b00100 : cuatro <= 1'b0;
					5'b00101 : cinco <= 1'b0;
					5'b00110 : seis <= 1'b0;
					5'b00111 : siete <= 1'b0;
					5'b01000 : ocho <= 1'b0;
				endcase			
		end*/
		
		
endmodule
