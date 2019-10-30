module videoGenerador(input logic boton,boton2,boton3,//boton4,
							 input logic clk, // clock de 60 Hz pues se instancia con el clock de V_SYNC...
							 input logic [9:0]cuentaX,cuentaY,
							 output logic jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,output_gano,
							 //output logic [1:0] gano,
							 output logic [7:0] r,g,b);
							 
		logic inrect1,visible_sprite1,visible_sprite2,lineas1;
		
		
		logic [3:0] contador;
		
		//logic [23:0] rgb1, rgb2;
		
		
		
		controlTOP control (boton,boton2,boton3,clk,cuentaX,cuentaY,jugador10,jugador11,jugador12,jugador13,jugador14,jugador15,jugador16,jugador17,jugador18,output_gano,r,g,b);
		
		
		
		
		
		//chargenrom chargerenromb (cuentaY[8:3]+8'd120, cuentaX[2:0],cuentaY[2:0],pixel);
		
		//logic  linea1, linea2, linea3, linea4;
		
		
		/*
		rectgen seleccionador (clk,boton,boton3,cuentaX,cuentaY,0,130,180,140,inrect1,contador);
		
		
		
		muxSeleccionador muxSel (clk, cuentaX, cuentaY, visible_sprite, rgb);
		
		sprite_Rick Jugador1 (clk, cuentaX,cuentaY,90,90,rgb1,visible_sprite1);
		
		sprite_Morty Jugador2 (clk, cuentaX, cuentaY, 180,90,rgb2,visible_sprite2);
		
		*/
		
		//lineas CuatroLineas (cuentaX,cuentaY,lineas1);
		
		
		
		
		//mux4a1 mux41 (rgb1, rgb2,inrect1,visible_sprite1,visible_sprite2,lineas1, r,g,b);
		
		
		//sprite_top spriteTop (clk, cuentaX,cuentaY, 90,90,rgb,visible_sprite);
		
		
		
		//assign linea1 = ((cuentaX > 213) & (cuentaX < 229) | (cuentaX > 426) & (cuentaX < 442) | (cuentaY > 160) & (cuentaY < 176) | (cuentaY > 320) & (cuentaY < 336))? 1:0;
		
		
		
		
		
		//assign r = out_mux[23:16];
		
		//assign g = out_mux[15:8];
		
		//assign b = out_mux[7:0];
		
		
		
		//assign {g,b} = (cuentaY[3] == 0) ? {{8{pixel}},8'h00}:{8'h00,{8{pixel}}};
		
		//assign g = inrect          ? 8'hFF              :8'h00;
		//assign r = {8{inrect}};
		
		//assign r = {8{inrect}};
		
	 //logic sq_a, sq_b, sq_c, sq_d;
    //assign sq_a = ((cuentaX > 120) & (cuentaY >  40) & (cuentaX < 280) & (cuentaY < 200)) ? 1 : 0;
    //assign sq_b = ((cuentaX > 200) & (cuentaY > 120) & (cuentaX < 360) & (cuentaY < 280)) ? 1 : 0;
    //assign sq_c = ((cuentaX > 280) & (cuentaY > 200) & (cuentaX < 440) & (cuentaY < 360)) ? 1 : 0;
    //assign sq_d = ((cuentaX > 360) & (cuentaY > 280) & (cuentaX < 520) & (cuentaY < 440)) ? 1 : 0;
	 
	 //logic [11:0] linea1, linea2, linea3, linea4;
	 //logic linea1;
	 //logic sq_a;
	 
	 //assign linea1 = ((cuentaX > 213) & (cuentaX < 229) | (cuentaX > 426) & (cuentaX < 442) | (cuentaY > 160) & (cuentaY < 176) | (cuentaY > 320) & (cuentaY < 336))? 0:1;
	 
	 //botonMove #(.DER_INICIAL(0), .IZQ_INICIAL(100), .UP_INICIAL(100), .DOWN_INICIAL(150)) bM (.clk(clk), .move(boton), .borde_izq(linea1), .borde_der(linea2), .borde_up(linea3), .borde_down(linea4));
						 
	 //assign sq_a = ((cuentaX > linea1) & (cuentaX < linea2) & (cuentaY > linea3) & (cuentaY < linea4))? 1:0;
	 
	 
	 //assign r = {8{sq_a}};
	 //assign g = {8{1'b0}};
	 //assign b = {8{1'b0}};
    //assign r = {8{sq_b}};         // square b is red
    //assign g = {8{sq_a | sq_d}};  // squares a and d are green
    //assign b = {8{sq_c}};  
		
		
endmodule
