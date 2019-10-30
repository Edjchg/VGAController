module srom #(parameter ADDR_WIDTH=8, DATA_WIDTH=8, DEPTH=256, MEMFILE="") (
    input logic i_clk,
    input logic [ADDR_WIDTH-1:0] i_addr, 
    input logic i_write,
    input logic [DATA_WIDTH-1:0] i_data,
    output logic [DATA_WIDTH-1:0] o_data 
    );

    logic [DATA_WIDTH-1:0] memory_array [0:DEPTH-1]; 

    initial begin
        if (MEMFILE > 0)
        begin
            $display("Loading memory init file '" + MEMFILE + "' into array.");
            $readmemh(MEMFILE, memory_array);
        end
    end

    always @ (posedge i_clk)
    begin
        if(i_write) begin
            memory_array[i_addr] <= i_data;
        end
        else begin
            o_data <= memory_array[i_addr];
        end     
    end

endmodule
