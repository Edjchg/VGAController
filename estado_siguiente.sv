module estado_siguiente (input logic x,
								 input logic [2:0] state,
								 output logic [2:0] q);
	
	//assign q[2] = x & ~state[2] & state[1] & state[0] | x & state[2] & ~state[1] & ~state[0];
	//assign q[1] = ~x & ~state[2] & state[1] | ~x & state[2] & ~state[1] & ~state[0] | x & ~state[2] & ~state[1] & state[0];
	//assign q[0] = ~x & ~state[2] & state[1] | state[2] & ~state[1] & ~state[0] | x & ~state[1] & ~state[0];
					
	assign q[2] = ~x & state[2] & state[1] | x & ~state[2]&state[1] | x &state[2]&~state[1];
	assign q[1] = ~x &state[1] | ~state[2] &state[1]&~state[0] | ~x&state[2]&~state[0]|x &~state[1]&state[0];
	assign q[0] = ~x&~state[2]&state[1] | ~x&state[1]&state[0]|state[2]&~state[1]&~state[0]|x&~state[1]&~state[0] |x&state[2]&~state[1];
				
endmodule