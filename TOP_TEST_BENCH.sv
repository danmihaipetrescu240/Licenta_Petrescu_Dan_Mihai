`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2023 02:44:33 PM
// Design Name: 
// Module Name: TOP_TEST_BENCH
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


module TOP_TEST_BENCH();

// logic signed [7:0] test_data_b [0:783] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 116, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 90, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 76, 105, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 127, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 127, 62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 122, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 127, 81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 115, 127, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 127, 108, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 43, 89, 124, 127, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 127, 42, 0, 0, 0, 23, 24, 58, 72, 75, 120, 121, 117, 89, 120, 126, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 126, 118, 103, 103, 103, 126, 127, 125, 120, 99, 71, 45, 14, 2, 116, 125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 88, 88, 88, 88, 88, 49, 28, 0, 0, 0, 0, 0, 51, 127, 110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 127, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
   // logic signed [7:0] test_data_a [0:783] = '{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 40, 103, 127, 127, 127, 127, 48, 40, 40, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 79, 79, 79, 84, 126, 126, 126, 126, 126, 126, 126, 126, 126, 105, 19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 120, 73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 126, 126, 126, 119, 56, 107, 126, 126, 126, 126, 126, 126, 126, 126, 126, 105, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 17, 17, 17, 15, 0, 15, 74, 17, 102, 117, 126, 126, 126, 126, 126, 118, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 17, 99, 126, 126, 126, 126, 122, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 16, 101, 101, 108, 126, 126, 126, 126, 120, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 83, 126, 126, 126, 126, 126, 126, 126, 119, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 126, 126, 126, 126, 126, 126, 126, 126, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 100, 126, 126, 126, 126, 126, 126, 126, 115, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 43, 43, 43, 124, 126, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 76, 126, 126, 126, 125, 29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 119, 126, 126, 126, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 116, 126, 126, 75, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 101, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 105, 105, 105, 29, 18, 18, 10, 13, 18, 75, 111, 126, 126, 126, 126, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 126, 126, 126, 126, 126, 126, 97, 107, 126, 126, 126, 126, 126, 126, 78, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 126, 118, 117, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 78, 123, 126, 126, 126, 126, 126, 126, 126, 126, 79, 78, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 126, 126, 126, 126, 126, 63, 39, 39, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
logic signed [7:0] test_data_X [0:783] ='{0,0,0,0,0,0,0,0,0,11,0,0,1,1,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,10,89,78,26,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,59,116,124,58,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,69,117,127,127,93,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,82,127,122,0,0,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,111,127,61,4,4,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25,127,118,25,2,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,0,0,0,70,124,86,2,1,0,2,0,0,0,3,0,0,11,0,0,0,0,0,0,0,0,0,0,0,0,3,3,93,127,85,3,0,0,0,3,0,5,0,1,5,0,0,5,0,0,0,0,0,1,0,0,0,1,0,0,121,127,70,3,0,3,0,0,0,0,1,26,38,0,6,0,0,0,0,0,0,0,1,0,2,0,0,7,124,122,41,0,0,0,4,0,5,0,54,124,126,43,4,0,0,0,0,0,2,0,0,0,0,0,5,41,123,123,24,0,0,0,10,1,19,72,127,117,127,113,30,0,0,0,0,0,2,0,0,0,1,0,3,51,125,117,7,2,6,0,0,0,72,127,103,31,96,127,42,12,0,0,0,0,0,0,3,0,3,0,0,44,122,99,0,0,2,0,0,30,101,127,56,0,101,124,49,0,0,0,0,0,0,0,3,0,0,2,3,49,127,99,7,0,0,4,29,124,127,87,9,31,125,65,27,0,0,0,0,0,0,0,1,0,0,0,5,11,124,122,31,4,0,2,71,123,127,21,0,85,118,20,0,0,0,0,0,0,0,1,2,0,0,0,1,4,120,127,69,0,0,7,102,127,114,11,5,92,58,14,0,3,0,0,0,0,0,0,1,1,0,0,0,0,72,116,104,14,8,0,110,124,94,30,112,127,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,103,124,99,62,9,120,125,125,123,124,90,10,7,0,6,0,0,0,0,0,0,0,0,0,1,1,0,0,30,120,127,127,127,121,127,125,84,36,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,4,0,8,21,62,73,91,75,107,51,0,1,2,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,0,8,5,0,3,0,5,0,8,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,3,0,2,0,0,1,0,0,3,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
localparam period = 20;

reg clock, enable, reset;  
reg signed [7:0] imagine [0:783];
reg [7:0] cifra_iesire;
reg stare_retea;

neural_network NN(.clock(clock), .enable(enable), .imagine(imagine), 
                  .cifra_iesire(cifra_iesire), .stare_retea(stare_retea));

initial begin
clock = 0;
enable = 0;
reset = 0;
imagine = test_data_X;
#145
enable = 1;
#145
reset = 1;
#25
reset = 0;
end

always begin
#10 clock = ~clock;
end

endmodule