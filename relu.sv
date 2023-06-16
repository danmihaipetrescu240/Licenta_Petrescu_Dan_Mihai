module relu #(parameter latime = 8)(
    input signed [4*latime-1:0] date_intrare,
    output signed [2*latime-1:0] date_iesire
    );
    
    wire signed [4*latime-1:0] temp;
    
    assign temp = (date_intrare > 0) ? date_intrare:0;
    assign date_iesire = temp >> 8;
    
endmodule
