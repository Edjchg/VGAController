module sprite_Morty(input clk, input [9:0] posx,
						posy, pixelx, pixely,
						output [23:0] RGB,
						output visible);
//ROM
logic [0:11] address;
logic [2:0] color;
rom_morty  ROM (address,clk, color);	
//DECO
deco_Morty DECO (color, RGB);
logic xm63, ym63;
//ADDRESS GENERATION
addressGen ADDRESSS(pixelx, pixely,
            posx, posy, xm63, ym63,address);	
//VISIBLE LOGIC			
visibleLogic VIS (xm63, ym63,color, visible);						
endmodule
