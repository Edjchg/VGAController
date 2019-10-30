module mux_9a1 (input logic [23:0] rgb0,rgb1,rgb2,rgb3,rgb4,rgb5,rgb6,rgb7,rgb8,lineas,
					input logic visible_rectangulo,visible0,visible1,visible2,visible3,visible4,visible5,visible6,visible7,visible8,visblelineas,
					output logic [7:0]r,g,b
					 );

			logic [23:0]out_mux;
			
			
			always @(visible_rectangulo or visible0 or visible1 or visible2 or visible3 or visible4 or visible5 or visible6 or visible7 or visible8 or visblelineas) begin
			      case({visible_rectangulo,visible0,visible1,visible2,visible3,visible4,visible5,visible6,visible7,visible8,visblelineas})
					
						10'b00000000000 : out_mux <= 24'b000000000000000000000000;
						10'b00000000001 : out_mux <= 24'b111111111111111111111111;
						10'b00000000010 : out_mux <= rgb8;
						10'b00000000100 : out_mux <= rgb7;
						10'b00000001000 : out_mux <= rgb6;
						10'b00000010000 : out_mux <= rgb5;
						10'b00000100000 : out_mux <= rgb4;
						10'b00001000000 : out_mux <= rgb3;
						10'b00010000000 : out_mux <= rgb2;
						10'b00100000000 : out_mux <= rgb1;
						10'b01000000000 : out_mux <= rgb0;
						11'b10000000000 : out_mux <= 24'b111111110000000011111111;
						default  : out_mux <= 24'b000000000000000000000000;
					endcase
			end
			
			
   assign r = out_mux[23:16];
		
	assign g = out_mux[15:8];
		
	assign b = out_mux[7:0];


endmodule
