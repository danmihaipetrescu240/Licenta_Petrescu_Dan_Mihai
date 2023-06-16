`timescale 1ns / 1ps
module dense_layer2(
    input clock,
    input enable,
    input reset,
    input signed [15:0] date_intrare [0:31],
    output signed [15:0] iesire_layer [0:9],
    output layer_terminat
    );
    
    reg signed [31:0] dense2_retea [0:9];
    reg signed [15:0] relu_retea [0:9];
  
localparam signed [7:0] VECTOR_BIASURI_LAYER3 [0:9] = '{ -18, 10, 6, -9, -2, 16, -1, 3, -3, -8 };
    
    
localparam signed [7:0] VECTOR_WEIGHTS_LAYER3 [0:9] [0:31] = '{
{ -17, -7, -22, -31, 44, -6, 6, -15, 22, -16, -26, 29, -29, -57, 35, 7, 5, 17, 13, -27, -11, 10, 5, -73, 0, 30, 16, 17, -51, -15, -14, 24 },
{ 27, 17, -17, 13, -12, -7, 30, -2, 8, 17, -61, -52, 26, -36, -2, -53, 15, -39, -52, -14, 26, -55, 17, 19, 15, 47, -28, 9, 37, 23, 33, -32 },
{ 32, 28, 30, -100, 24, -31, -61, 20, 32, -31, -6, 35, -14, -31, -18, 2, -12, 18, 20, 50, -49, -22, 22, 18, -55, -12, 13, 21, 29, 19, 21, -15 },
{ 43, -44, 35, 17, -2, 8, 9, 6, 7, -31, -11, -18, -73, 32, -35, -1, 16, 16, -11, 22, 32, -16, -72, 20, -45, 9, 21, 19, -29, -7, 19, 0 },
{ -35, 0, -30, 26, -55, -6, 9, -34, -127, -4, 31, 14, 18, 36, 23, -18, -16, -16, 19, -56, 10, 9, 47, -21, -57, -45, -9, 6, 22, 26, -52, 24 },
{ 29, -17, -18, 37, 4, 28, -19, 6, 25, -29, 33, 24, 7, 15, -43, 38, 7, 28, -27, -34, 9, -5, -23, 32, 63, -24, -39, -76, -5, -19, -42, -45 },
{ 9, 22, -49, -30, -6, -39, 24, 19, 12, -12, 19, 23, -12, -59, 7, -59, 5, -17, 33, -54, 1, 11, -27, -17, 2, 23, -44, -74, 22, 11, -92, 41 },
{ -6, 8, -19, -16, -2, 22, 23, -45, 12, 13, -41, -29, 22, 21, -4, 16, -68, -21, 17, 34, 45, -19, 44, 42, -1, -10, 19, 19, -44, -19, -35, 12 },
{ -79, 30, -12, 6, 13, 5, -49, 30, -25, 19, 24, -41, -4, -1, -58, -4, 18, 25, 5, -46, -6, 27, -34, -27, -43, -41, 20, -6, -5, 21, 14, -57 },
{ -64, -78, 19, 28, -7, 9, -73, 7, -51, 14, 19, -34, 22, 24, 23, 15, -11, -14, -26, -15, -18, 16, -15, -81, 28, 3, 16, 34, -20, -16, 55, 24 }
};

    wire dense2_en = enable;
    reg dense2_terminat;

    
  dense_layer #(.numar_neuroni(10),.dimensiune_intrare(32), .latime(8)) dense_layer2(.clock(clock), .layer_enable(dense2_en), .reset(reset),
                                                                     .date_intrare(date_intrare), .weights(VECTOR_WEIGHTS_LAYER3), .biases(VECTOR_BIASURI_LAYER3),
                                                                     .date_iesire(dense2_retea), .layer_terminat(dense2_terminat)); //Dense layer

    relu relu_activation[9:0] (.date_intrare(dense2_retea), .date_iesire(relu_retea)); //ReLu activation
    
    assign iesire_layer = relu_retea;               
    assign layer_terminat = dense2_terminat;

endmodule
