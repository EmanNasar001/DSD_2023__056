`timescale 1ns/10ps // time unit = 1 ns, time precision = 10 ps

module lab3(output logic x, y,
            input logic a, b, c);  // Fixed input ports definition

    // Design logic
    assign x = ~c ^ (a | b);  // Correct expression
    assign y = (a | b) & (~(a & b) ^ (a | b)); // Correct expression

endmodule
