module chargenrom(input logic [7:0] ch,
						input logic [2:0] xoff, yoff,
						output logic pixel);
		logic [5:0] charrom[2027:0];
		logic [7:0] line;
		
		initial
			$readmemb ("charrom.txt",charrom);
		assign line = charrom[yoff + {ch -65,3'b000}];
		
		assign pixel = line[3'd7-xoff];
		

endmodule
