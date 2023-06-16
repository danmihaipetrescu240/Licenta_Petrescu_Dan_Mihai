`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2023 01:43:35 PM
// Design Name: 
// Module Name: neural_network
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module neural_network(
    input clock,
    input enable,
    input reset,
    input [7:0] imagine [0:783],
    output [7:0] cifra_iesire,
    output stare_retea
    );
    
    
    reg activare_tragere;
    wire tragere_terminata;
    reg signed [15:0] tragere [0:195];
    
    wire signed [7:0] tragere_in1;
    wire signed [7:0] tragere_in2;
    wire signed [7:0] tragere_in3;
    wire signed [7:0] tragere_in4;
    wire signed [7:0] tragere_final;
    
    reg [15:0] tragere_in1_addr;
    reg [15:0] tragere_in2_addr;
    reg [15:0] tragere_in3_addr;
    reg [15:0] tragere_in4_addr;
    reg [15:0] tragere_final_addr = 0;
    reg [15:0] tragere_addr = 0;
    reg [15:0] tragere_rand = 0;
    
    initial
    begin
        tragere_in1_addr <= 8'b0000_0000;
        tragere_in2_addr <= 8'b0000_0001;
        tragere_in3_addr <= 8'b0001_1100;
        tragere_in4_addr <= 8'b0001_1101;
        activare_tragere <= 1'b1;
    end
    
    avg_pooling AvgPooling(clock,activare_tragere,tragere_in1,tragere_in2,tragere_in3,tragere_in4,tragere_final,tragere_terminata);
    
    assign tragere_in1 = ((imagine[tragere_in1_addr]));
    assign tragere_in2 = ((imagine[tragere_in2_addr]));
    assign tragere_in3 = ((imagine[tragere_in3_addr]));
    assign tragere_in4 = ((imagine[tragere_in4_addr]));
    
    always @(posedge clock) begin
    if(reset) begin
        tragere_in1_addr <= 8'b0000_0000;
        tragere_in2_addr <= 8'b0000_0001;
        tragere_in3_addr <= 8'b0001_1100;
        tragere_in4_addr <= 8'b0001_1101;
        tragere_final_addr <= 0;
        tragere_rand <= 0;
        tragere_addr <= 0;
        activare_tragere <= 1'b1; 
    end
    else if(enable) begin
        if(tragere_terminata) begin
            tragere[tragere_final_addr] = tragere_final;
            tragere_addr = tragere_addr + 2; 
            tragere_rand = tragere_rand + 2;
            if(tragere_rand == 28) begin 
                tragere_addr = tragere_addr + tragere_rand;
                tragere_rand = 0;
            end
            if(tragere_in4_addr == 783) begin 
                activare_tragere <= 0;
            end
            else if(tragere_in4_addr != 783) begin 
                tragere_in1_addr <= tragere_addr;
                tragere_in2_addr <= tragere_addr + 1;
                tragere_in3_addr <= tragere_addr + 28;
                tragere_in4_addr <= tragere_addr + 29;
                tragere_final_addr <= tragere_final_addr + 1;
            end
        end
    end       
    end
    
    /* Hidden layer */
    
    reg dense1_enable;
    wire dense1_terminat;
    reg signed [15:0] dense1_retea [0:31];
    initial dense1_enable <= 0;
    
    dense_layer1 layer2 (.clock(clock), .enable(dense1_enable), .reset(reset), 
                         .imagine_trasa(tragere), .iesire_layer(dense1_retea), 
                         .layer_terminat(dense1_terminat));

    always @(posedge clock) begin
        if(reset) begin
            dense1_enable <= 0;
        end
        else if(enable) begin
            if(activare_tragere == 0 && dense1_terminat == 0) begin 
                dense1_enable <= 1;
            end
            else dense1_enable <= 0; 
        end
    end
    
    
    reg dense2_enable;
    wire dense2_terminat;
    reg signed [15:0] dense2_retea [0:9];
    initial dense2_enable <= 0;

    dense_layer2 layer3 (.clock(clock), .enable(dense2_enable), .reset(reset), 
                         .date_intrare(dense1_retea), .iesire_layer(dense2_retea), 
                         .layer_terminat(dense2_terminat));

    always @(posedge clock) begin
        if(reset) begin
            dense2_enable <= 0;
        end
        else if(enable) begin
            if(activare_tragere == 0 && dense1_terminat == 1 && dense2_terminat == 0) begin 
                dense2_enable <= 1;
            end
            else dense2_enable <= 0; 
        end
    end
    
    
    reg enable_maxim;
    wire cifra_recunoscuta_stare;
    reg [7:0] cifra;
    
    initial enable_maxim <= 0;
    
    select_max ultimul_layer (.clock(clock), .enable(enable_maxim), .reset(reset), 
                           .date_intrare(dense2_retea), .cifra(cifra), 
                           .stare_layer(cifra_recunoscuta_stare));
        
    always @(posedge clock) begin
        if(reset) begin
            enable_maxim <= 0;
        end
        else if(enable) begin
            if(dense2_terminat == 1) begin 
                enable_maxim <= 1;
            end
            else enable_maxim <= 0;
        end
    end
    
    assign cifra_iesire = cifra;
    assign stare_retea = cifra_recunoscuta_stare;
    
endmodule

