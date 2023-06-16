module neuron #(parameter dimensiune_intrare=196, latime = 8)(
    input clock,
    input enable,
    input reset,
    input signed [2*latime-1:0] date_intrare[0:dimensiune_intrare-1],
    input signed[latime-1:0] weight[0:dimensiune_intrare-1],
    input signed[latime-1:0] bias,
    output signed[4*latime-1:0] date_iesire,
    output neuron_terminat
    );
    
    integer adresa = 0;
    reg terminat = 0;
    
    reg signed [4*latime-1:0] product = 0;
    reg signed [4*latime-1:0] out = 0;
    
    always @(posedge clock) begin
        if(reset) begin 
            terminat <= 0;
            adresa <= 0;
        end
        else if(enable) begin
            if(adresa < dimensiune_intrare-1) begin
                product <= date_intrare[adresa]*weight[adresa]; 
                out <= out+product; 
               
            end
            if(adresa == dimensiune_intrare-1) begin 
                terminat <= 1;
            end else begin
                adresa <= adresa + 1'b1;
                terminat <= 0;
            end
        end
    end
    
    assign date_iesire = out + bias; 
    assign neuron_terminat = terminat;
    
endmodule