`timescale 1ns / 1ps


module select_max # (parameter numar_neuroni=10, latime=8)(
    input clock,
    input enable,
    input reset,
    input signed[2*latime-1:0] date_intrare [0:numar_neuroni-1],
    output [latime-1:0] cifra,
    output stare_layer
    );
    
    integer i = 0;
    reg signed [2*latime-1:0] maxim = 0;
    reg signed [latime-1:0] index = 0;
    reg stare = 0;
    
    always @(posedge clock) begin
        if(reset) begin
            stare <= 0;
            i <= 0;
            maxim <= 0;
            index <= 0;
        end
        else if(enable) begin
            if (date_intrare[i] >= maxim) begin 
                    maxim <= date_intrare[i]; 
                    index <= i;
                end
            if(i < 10) i <= i + 1;
                else stare <= 1;
        end
    end
    
    assign cifra = index;
    assign stare_layer = stare;
    
endmodule