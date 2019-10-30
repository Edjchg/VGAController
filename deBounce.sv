//---------------------Debounce del push button-----------------------------

//Cada vez que se presiona el push button se genera una señal basura, la cual 
//hay que esperar que pase para poder tener una señal estable y poder decidir 
//si la señal corresponde a un 0 o un 1 lógico.


//Este es el módulo que se utiliza para la señal del input pushButton y la salida estable del mismo.

module deBounce (input pb_1,clk,
                 output pb_out);

			logic slow_clk_en;
			logic Q1,Q2,Q2_bar;
			
			clock_enable u1(clk,pb_1,slow_clk_en);
			
			Dff_enable d1(clk,slow_clk_en,pb_1,Q1);
			
			Dff_enable d2(clk,slow_clk_en,Q1,Q2);
			
			assign Q2_bar = ~Q2;
			assign pb_out = Q1 & Q2_bar;
			
endmodule
 
