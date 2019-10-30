//-----------------------Slow clock para debounce-------------------------------//

module clock_enable(input Clk_100M,pushButton_1, output slow_clk_en);

				 logic [26:0]contador=0;
				 
				 always @(posedge Clk_100M, negedge pushButton_1)
				 begin
				  if(pushButton_1 == 0)
					  contador <= 0;
				  else
					 contador <= (contador>=249999)?0:contador+1;
				  end
	     assign slow_clk_en = (contador == 249999)?1'b1:1'b0;
		  
endmodule
