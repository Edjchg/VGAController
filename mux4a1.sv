module mux4a1 ( input logic [23:0]RGB_Sprite1, RGB_Sprite2,//input logic inrect1,inrect2,linea1, posibleas colores... que van aca***
					input logic seleccionador,sprite1,sprite2,lineas,
				   output logic [7:0]r,g,b);
					
	logic [23:0]output_mux;
	/*
	always @ (sel1 or sel2 or sel3) begin
      case ({sel1,sel2,sel3})
         3'b000 : output_mux <= 24'b000000000000000000000000;//***
         3'b001 : output_mux <= 24'b111111111111111111111111;//si sel3 == 1 ->black
         3'b010 : output_mux <= 24'b111111110000000011111111;//si sel2 == 1 ->green
         3'b011 : output_mux <= 24'b000000000000000000000000;
			3'b100 : output_mux <= 24'b000000001111111111111111;//si sel1 == 1 -> red
			3'b101 : output_mux <= 24'b000000000000000000000000;
			3'b110 : output_mux <= 24'b000000000000000000000000;
			3'b111 : output_mux <= 24'b000000000000000000000000;
      endcase
   end
	*/
	always @(seleccionador or sprite1 or sprite2 or lineas) begin
		case({seleccionador,sprite1,sprite2,lineas})
			 
			4'b0000 : output_mux <= 24'b000000000000000000000000;
			4'b0001 : output_mux <= 24'b111111111111111111111111;//lineas.
			4'b0010 : output_mux <= RGB_Sprite2;                 //sprite2 del jugador 2.
			4'b0011 : output_mux <= 24'b000000000000000000000000;
			4'b0100 : output_mux <= RGB_Sprite1;                 //sprite1 del jugador 1.
			4'b0101 : output_mux <= 24'b000000000000000000000000;
			4'b0110 : output_mux <= 24'b000000000000000000000000;
			4'b0111 : output_mux <= 24'b000000000000000000000000;
			4'b1000 : output_mux <= 24'b111111110000000011111111;//barra seleccionadora
			4'b1001 : output_mux <= 24'b000000000000000000000000;
			4'b1010 : output_mux <= 24'b000000000000000000000000;
			4'b1011 : output_mux <= 24'b000000000000000000000000;
			4'b1100 : output_mux <= 24'b000000000000000000000000;
			4'b1101 : output_mux <= 24'b000000000000000000000000;
			4'b1110 : output_mux <= 24'b000000000000000000000000;
			4'b1111 : output_mux <= 24'b000000000000000000000000;
			
			
			
			
		endcase
	end
	
	
	
	assign r = output_mux[23:16];
		
	assign g = output_mux[15:8];
		
	assign b = output_mux[7:0];
	
endmodule
