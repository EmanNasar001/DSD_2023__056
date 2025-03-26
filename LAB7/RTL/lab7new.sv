`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2025 11:57:17 AM
// Design Name: 
// Module Name: lab7new
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


module lab7new(input logic clk,           // System clock
    input logic reset,         // Reset signal
    input logic write,         // Write enable
    input logic [2:0] sel,     // Manual selection input
    input logic [3:0] number,  // Input number for registers
    output logic segA, segB, segC, segD, segE, segF, segG, // 7-segment display outputs
    output logic [7:0] an   // Anode control signals

    );
logic out_clk;          
        logic [16:0] counter;  // 17-bit counter
        
        always_ff @(posedge clk or posedge reset) begin
            if (reset) begin
                counter <= 0;
                out_clk <= 0;
            end else if (counter == 124999) begin // Toggle at 125,000 cycles (half-period)
                counter <= 0;
                out_clk <= ~out_clk; // Toggle the output clock
            end else begin
                counter <= counter + 1;
            end
        end
    logic [2:0] countout;
    always_ff @(posedge out_clk or posedge reset) begin
            if (reset)
                countout <= 3'b000;  // Reset to 0
            else if (countout == 3'b111)
                countout <= 3'b000;  // Reset after reaching 7
            else
                countout <= countout + 1; // Increment count
        end
    logic [2:0] twoxone_out;
    always_comb begin
            if (write == 1'b0)
                twoxone_out = countout;  // When write = 0, select counter output
            else
                twoxone_out = sel;  // When write = 1, select manual input
        end
    logic en0,en1,en2,en3,en4,en5,en6,en7;

        always_comb begin
                  
                   case (twoxone_out)
                                      3'b000 : an = 8'b11111110;
                                      3'b001 : an = 8'b11111101;
                                      3'b010 : an = 8'b11111011;
                                      3'b011 : an = 8'b11110111;
                                      3'b100 : an = 8'b11101111;
                                      3'b101 : an = 8'b11011111;
                                      3'b110 : an = 8'b10111111;
                                      3'b111 : an = 8'b01111111;
                                      default: an = 8'b11111111;
                   endcase
               end
        
        //AND gate
        assign en0=write& (~an[0]);
        assign en1=write& (~an[1]);
        assign en2=write& (~an[2]);
        assign en3=write& (~an[3]);
        assign en4=write& (~an[4]);
        assign en5=write& (~an[5]);
        assign en6=write& (~an[6]);
        assign en7=write& (~an[7]);
        //OR gate
       
      // Declare register array properly
           logic [3:0] registers [0:7];
       
           always_ff @(posedge clk or posedge reset) begin 
               if (reset) begin
                   // Reset all registers to 0
                   registers[0] <= 4'b0000;
                   registers[1] <= 4'b0000;
                   registers[2] <= 4'b0000;
                   registers[3] <= 4'b0000;
                   registers[4] <= 4'b0000;
                   registers[5] <= 4'b0000;
                   registers[6] <= 4'b0000;
                   registers[7] <= 4'b0000;
               end else begin 
                   if (en0) registers[0] <= number;
                   if (en1) registers[1] <= number;
                   if (en2) registers[2] <= number;
                   if (en3) registers[3] <= number;
                   if (en4) registers[4] <= number;
                   if (en5) registers[5] <= number;
                   if (en6) registers[6] <= number;
                   if (en7) registers[7] <= number;
               end
           end
       
           logic [3:0] outmux;
       
           always_comb begin
               case (twoxone_out)
                   3'b000: outmux = registers[0];
                   3'b001: outmux = registers[1];
                   3'b010: outmux = registers[2];
                   3'b011: outmux = registers[3];
                   3'b100: outmux = registers[4];
                   3'b101: outmux = registers[5];
                   3'b110: outmux = registers[6];
                   3'b111: outmux = registers[7];
                   default: outmux = 4'b0000; // Default case
               endcase
           end
       
           always_comb begin
               case (outmux)
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
                   default: {segA, segB, segC, segD, segE, segF, segG} = 7'b1111111; // Default case
               endcase
           end


endmodule
