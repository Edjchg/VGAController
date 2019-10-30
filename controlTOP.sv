module controlTOP (input logic boton_Cuenta_Casilla, boton_Seleccionador,boton_rst,clk,
						input logic [9:0] cuentaX,cuentaY,
						output logic jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,output_gano,
						//output logic [1:0]gano,
						 output logic [7:0] r,g,b);
			
			logic [3:0] contador;
			logic [1:0]contador_seleccionador,contador_Write;
			
			logic [23:0] rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8;
			
			logic visible0,visible1,visible2,visible3,visible4,visible5,visible6,visible7,visible8,visiblelineas,visible_rectangulo;
			
			//logic cero,uno,dos,tres,cuatro,cinco, seis,siete,ocho;
			
			logic [1:0]rdData0,rdData1,rdData2,rdData3,rdData4,rdData5,rdData6,rdData7,rdData8;
			
			
			logic posX0,posY0, posX1,posY1, posX2,posY2, posX3,posY3, posX4,posY4, posX5,posY5, posX6,posY6, posX7,posY7, posX8,posY8;
			
			//logic jugador10,jugador20,jugador11,jugador21,jugador12,jugador22,jugador13,jugador23,jugador14,jugador24,jugador15,jugador25,jugador16,jugador26,jugador17,jugador27,jugador18,jugador28;
			
			 contadorPushButton boton1(clk, boton_rst, boton_Cuenta_Casilla, contador);
			 
			 contadorPushButtonSeleccionador botonSel (clk, boton_rst, boton_Seleccionador,contador_seleccionador);
			 
			 //contadorWrite contWrite (clk, boton_rst,boton_Seleccionador,contador_Write,level_out);
			 
			 pos_edge_det2 write (boton_Seleccionador, clk, level_out);
			 
			 rectgen seleccionador (clk,boton_Cuenta_Casilla,boton3,contador,cuentaX,cuentaY,0,130,180,140,visible_rectangulo);
			 
			 
			 
			 
			 
			 deco decodificador (contador, level_out, cero,uno,dos,tres,cuatro,cinco, seis,siete,ocho);
			 
			 
			 
			 //------------------------------Casilla 0 --------------------------------------------//
			 
			 regfile1x24b memoria_Casilla0(clk,boton_rst, cero, contador_seleccionador,rdData0,jugador10,jugador20); // Se guardó en memoria cual sprite va en esa casilla.
			 
			 
			 
			 muxSeleccionador casilla0 (106,80,cuentaX,cuentaY, clk,rdData0,visible0,rgb0); // Selecciona cual sprite se usará en dicha casilla
				           																				
														
			  
			//------------------------------Casilla 1 --------------------------------------------//
			 
			 regfile1x24b memoria_Casilla1(clk,boton_rst, uno, contador_seleccionador,rdData1,jugador11,jugador21);
			 
			 muxSeleccionador casilla1 (318,80, cuentaX,cuentaY,clk,rdData1,visible1,rgb1);
			 
			 
			 //------------------------------Casilla 2 --------------------------------------------//
			 
			 regfile1x24b memoria_Casilla2(clk,boton_rst, dos, contador_seleccionador,rdData2,jugador12,jugador22);
			 
			 muxSeleccionador casilla2 (530,80,cuentaX,cuentaY, clk,rdData2,visible2,rgb2);
			 
			 //------------------------------Casilla 3 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla3(clk,boton_rst, tres, contador_seleccionador,rdData3,jugador13,jugador23);
			 
			 muxSeleccionador casilla3 (106,240,cuentaX,cuentaY, clk,rdData3,visible3,rgb3);
			 
			 //------------------------------Casilla 4 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla4(clk,boton_rst, cuatro, contador_seleccionador,rdData4,jugador14,jugador24);
			 
			 muxSeleccionador casilla4 (318,240,cuentaX,cuentaY, clk,rdData4,visible4,rgb4);
			 
			 
			 //------------------------------Casilla 5 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla5(clk,boton_rst, cinco, contador_seleccionador,rdData5,jugador15,jugador25);
			 
			 muxSeleccionador casilla5 (530,240, cuentaX,cuentaY,clk,rdData5,visible5,rgb5);
			 
			 
			 //------------------------------Casilla 6 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla6(clk,boton_rst, seis, contador_seleccionador,rdData6,jugador16,jugador26);
			 
			 muxSeleccionador casilla6 (106,400,cuentaX,cuentaY, clk,rdData6,visible6,rgb6);
			 
			 
			 //------------------------------Casilla 7 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla7(clk,boton_rst, siete, contador_seleccionador,rdData7,jugador17,jugador27);
			 
			 muxSeleccionador casilla7 (318,400, cuentaX,cuentaY,clk,rdData7,visible7,rgb7);
			 
			 //------------------------------Casilla 8 --------------------------------------------//
			 
			 
			 regfile1x24b memoria_Casilla8(clk,boton_rst, ocho, contador_seleccionador,rdData8,jugador18,jugador28);
			 
			 muxSeleccionador casilla8 (530,400,cuentaX,cuentaY, clk,rdData8,visible8,rgb8);
			 
			 //------------------------------Lineas   --------------------------------------------//
			 lineas CuatroLineas (cuentaX,cuentaY,visblelineas);
			 
			 
			 
			 
			 mux_9a1 (rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8,lineas,
					visible_rectangulo,visible0,visible1,visible2,visible3,visible4,visible5,visible6,visible7,visible8,visblelineas,
					r,g,b
					 );
					 
					 
			//------------------------------Instancia de la lógica del juego--------------------//
			
			
			Maquina_Estado logica_Juego (clk,boton_rst, level_out, {jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18}, {jugador20,jugador21,jugador22,jugador23,jugador24,jugador25,jugador26,jugador27,jugador28}, gano);
																										
			mux_gano gano_jugador (gano, output_gano);
																											
			 
						 
endmodule
