//----------------------Flip Flop para con el clock enable para mitigar el bounce--------//

module Dff_enable(input DFF_CLOCK, clock_enable,D, output logic Q=0);

		always @ (posedge DFF_CLOCK) begin
		
		if(clock_enable==1) 
		   Q <= D;
		end
endmodule

				 