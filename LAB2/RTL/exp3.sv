`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/05/2025 04:35:56 PM
// Design Name: 
// Module Name: whatevever
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


module whatevever(output x,y,
input  a, b,c

    );
      assign x= ~c^(a|b);
      assign y=(a|b)&(~(a&b)^(a|b));
endmodule
