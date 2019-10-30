module vga (input logic clk,
			   input logic boton,boton2,boton3,
            output logic clk_25,
				output logic H_SYNC, V_SYNC,
				output logic SYNC_B, SYNC_BLANK,
				output logic jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,output_gano,
				//output logic [1:0] gano, 
				output logic [7:0]r,g,b);
				
				
		logic [9:0] cuentaX,cuentaY;
		//logic botonOut;
		
		
				
		
		
//--------------Instancia del divisor de clock-------------------------//
		divisorClk dv(clk,clk_25);

//--------------Instancia del controlador VGA--------------------------//		
		controladorVGA cntVGA (clk_25,H_SYNC,V_SYNC,SYNC_B,SYNC_BLANK, cuentaX,cuentaY);
		

//--------------Instancia del generador de Video----------------------//	
		videoGenerador vG (boton, boton2,boton3,//boton4,
                   		/*V_SYNC*/ clk_25,cuentaX, cuentaY,jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,output_gano,r,g,b);
								
//--------------Instancia de lógica del juego-------------------------//

		
endmodule
