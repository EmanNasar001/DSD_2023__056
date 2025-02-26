`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2025 09:43:54 PM
// Design Name: 
// Module Name: behaviour
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


module behaviour(input logic [3:0] a,
    input logic [2:0]s,

output logic segA, 
output logic segB,
output  logic segC,
output  logic segD,
output  logic segE,
output  logic segF,
output  logic segG,
output logic [7:0] A





    );
    always_comb begin
     case (a)
               4'b0000: {segA, segB, segC, segD, segE, segF, segG} = 7'b0000001; // 0
               4'b0001: {segA, segB, segC, segD, segE, segF, segG} = 7'b1001111; // 1
               4'b0010: {segA, segB, segC, segD, segE, segF, segG} = 7'b0010010; // 2
               4'b0011: {segA, segB, segC, segD, segE, segF, segG} = 7'b0000110; // 3
               4'b0100: {segA, segB, segC, segD, segE, segF, segG} = 7'b1001100; // 4
               4'b0101: {segA, segB, segC, segD, segE, segF, segG} = 7'b0100100; // 5
               4'b0110: {segA, segB, segC, segD, segE, segF, segG} = 7'b0100000; // 6
               4'b0111: {segA, segB, segC, segD, segE, segF, segG} = 7'b0001111; // 7
               4'b1000: {segA, segB, segC, segD, segE, segF, segG} = 7'b0000000; // 8
               4'b1001: {segA, segB, segC, segD, segE, segF, segG} = 7'b0000100; // 9
               4'b1010: {segA, segB, segC, segD, segE, segF, segG} = 7'b0001000; // A
               4'b1011: {segA, segB, segC, segD, segE, segF, segG} = 7'b1100000; // B
               4'b1100: {segA, segB, segC, segD, segE, segF, segG} = 7'b0110001; // C
               4'b1101: {segA, segB, segC, segD, segE, segF, segG} = 7'b1000010; // D
               4'b1110: {segA, segB, segC, segD, segE, segF, segG} = 7'b0110000; // E
               4'b1111: {segA, segB, segC, segD, segE, segF, segG} = 7'b0111000; // F
           endcase
       end
   

       always_comb begin
          
           case (s)
                              3'b000 : A = 8'b11111110;
                              3'b001 : A = 8'b11111101;
                              3'b010 : A = 8'b11111011;
                              3'b011 : A = 8'b11110111;
                              3'b100 : A = 8'b11101111;
                              3'b101 : A = 8'b11011111;
                              3'b110 : A = 8'b10111111;
                              3'b111 : A = 8'b01111111;
           endcase
       end
endmodule
