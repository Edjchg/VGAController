`timescale 1ns / 1ns

module regfile1x24b
  (input logic clk,
   input logic reset,
   input logic write,
   
   input [1:0] wrData, // informacion que se va a guardar en la direccion.
   
   output [1:0] rdData,
	
	output logic jugador1,jugador2);
	
	
	
	logic true;

   logic [15:0] 	 regfile [0:1];

   assign rdData = regfile[0];
	
	initial begin
		regfile[0] <= 2'b10;
	
		rdData <= 2'b10;
	
	end
	
	
	
	/*
	assert property
    (@(write) $rose(write) |=> true);
	 
	 
	 
	 always @(true)begin
		if (~reset) begin
			regfile[0] <= 2'b00;
		end
		
		if(true)begin
			regfile[0] <= wrData;
		end
		
	 end*/
	
	
   always @(posedge clk) begin
      if (reset) begin
	     regfile[0] <= 2'b00;
      end //else begin
	   if (write) begin
		  regfile[0] <= wrData;
		  
	   end else begin
		
		regfile[0] <= regfile[0];
		
		end
		
		if (regfile[0] == 2'b00)begin
			
			jugador1 = 1'b0;
			jugador2 = 1'b0;
		
		end else if (regfile[0] == 2'b01)begin
			jugador1 = 1'b1;
			jugador2 = 2'b0;
		end else begin
			jugador1 = 1'b0;
			jugador2 = 1'b1;
		end
		
	
   end

endmodule
