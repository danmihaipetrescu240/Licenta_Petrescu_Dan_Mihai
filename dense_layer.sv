module dense_layer # (parameter numar_neuroni=32, dimensiune_intrare=196, latime=8)(
    input clock,
    input layer_enable,
    input reset,
    input signed[2*latime-1:0] date_intrare [0:dimensiune_intrare-1],
    input signed[latime-1:0] weights [0:numar_neuroni-1][0:dimensiune_intrare-1],
    input signed[latime-1:0] biases [0:numar_neuroni-1],
    output signed[4*latime-1:0] date_iesire [0:numar_neuroni-1],
    output layer_terminat
    );
    
    reg [0:numar_neuroni-1] neuron_terminat;
    reg terminat = 0;
    
    neuron #(.dimensiune_intrare(dimensiune_intrare), .latime(latime)) dense_neuron[0:numar_neuroni-1] 
        (.clock(clock), .enable(layer_enable), .reset(reset), 
        .date_intrare(date_intrare), .weight(weights), .bias(biases), 
        .date_iesire(date_iesire), .neuron_terminat(neuron_terminat)); // Neuron submodules
        
    always @(posedge clock) begin
        if(neuron_terminat == '1) begin 
            terminat <= 1;
        end
    end
    
    assign layer_terminat = terminat;
    endmodule
