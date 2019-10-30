module rectgen (input logic clk,boton,boton_rst,
					 input logic [3:0]contador,
					 input logic [9:0] cuentaX, cuentaY,left,top,right,bot,
					 //output logic [9:0] bordeIz, bordeSup, bordeDer,bordeSub,
					 output logic inrect);
					 
			//logic [9:0] bordeIz, bordeSup, bordeDer,bordeSub,contador;
		
		
		
		logic temp;
		//logic [3:0]contador;
		
		
		//-------------------------------Iniciando contador de clicks de Push---------------------------//
		
		//contadorPushButton contador01 (clk, boton_rst, boton, contador);
		//----------------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------------------//		
// Disposicion de las casillas del tic-tac toe:	
//__________		
//|0_ |1_ |2_ |
//|3_ |4_ |5_ |
//|6_ |7_ |8_ |
//----------------------------------------------------------------------------------------------------//		
		
		always @ (contador) begin
			//Casilla 0
			if (contador == 4'b0000 )begin
				temp <= ((cuentaX > left) & (cuentaX < right) & (cuentaY > top)  & (cuentaY < bot)) ? 1:0;
			end
			
			//Casilla 1
			if (contador == 4'b0001 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top) & (cuentaY < bot)) ? 1:0;			
			end
			
			//Casilla 2
			if (contador == 4'b0010 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top) & (cuentaY < bot)) ? 1:0;
			end
			//-----------------------------------------------------------------------------------------------------------//
			//Casilla 3
			if (contador == 4'b0011 )begin
				temp <= ((cuentaX > left ) & (cuentaX < right) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//Casilla 4
			if (contador == 4'b0100 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//Casilla 5
			if (contador == 4'b0101 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top + 175) & (cuentaY < bot + 175)) ? 1:0;
			end
			
			//------------------------------------------------------------------------------------------------------------//
			
			//Casilla 6
			if (contador == 4'b0110 )begin
				temp <= ((cuentaX > left) & (cuentaX < right) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			//Casilla 7
			if (contador == 4'b0111 )begin
				temp <= ((cuentaX > left + 233) & (cuentaX < right + 233) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			//Casilla 8
			if (contador == 4'b1000 )begin
				temp <= ((cuentaX > left + 456) & (cuentaX < right + 456) & (cuentaY > top + 340) & (cuentaY < bot + 340)) ? 1:0;
			end
			
			
		end
		
		assign inrect = temp;

		
		//assign inrect = ( (cuentaX > left) & (cuentaX < right) & (cuentaY > top)  & (cuentaY < bot))?1:0;
			//sleep sleep10 (clk,contador); // este contador es una especie de sleep.
			
			/*
			initial begin
			bordeIz <= left;
			bordeSup <= top;
			bordeDer <= right;
			bordeSub <= bot;
			end
			
			
			always @(posedge clk, posedge boton)
			begin 
			
				
				
					bordeIz <= bordeIz + 10'd25;
				
					bordeDer <= bordeDer + 10'd25;
					
			
			
			end
			*/
			/*
			
			
			
			always @(posedge clk)
			begin
				
					if(boton == 0)begin
						if(bordeDer >= 640)begin
							bordeIz  <= left;
							bordeSup <= bordeSup + 10'd25;
							bordeDer <= right;
							bordeSub <= bordeSub + 10'd25;
						end else begin
						
							bordeIz  <= bordeIz  + 10'd25;
							bordeDer <= bordeDer + 10'd25;
						
						end
						
						if( bordeSub >= 480)begin
						
							bordeIz  <= left;
							bordeSup <= top;
							bordeDer <= right;
							bordeSub <= bot;
						
						end
					end else begin
					
					 bordeIz <= left;
					 bordeSup <= top;
					 bordeDer <= right;
					 bordeSub <= bot;
					
					end
					 
			
			end
			
			
			*/
			
			//assign inrect = ( (cuentaX > bordeIz) & (cuentaX < bordeDer) & (cuentaY > bordeSup)  & (cuentaY < bordeSub))?1:0;

endmodule
