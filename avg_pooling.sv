module avg_pooling(
    input clk,
    input activare_tragere,
    input [7:0] intrare1,
    input [7:0] intrare2,
    input [7:0] intrare3,
    input [7:0] intrare4,
    output [7:0] iesire,
    output  stare_tragere
    );
    
    reg [15:0] pool_out;
    
    always @(posedge clk) begin
        if(activare_tragere == 1) begin
            pool_out <= (intrare1+intrare2+intrare3+intrare4)>> 2;
            //assign pool_out = (intrare1 + intrare2 + intrare3 + intrare4) >> 2;

        end
        
    end
    
    assign iesire = pool_out[7:0];
    assign stare_tragere = (pool_out==(intrare1+intrare2+intrare3+intrare4)>> 2)? 1:0;

endmodule