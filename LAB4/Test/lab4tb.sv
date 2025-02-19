`timescale 1ns/10ps  // time unit = 1 ns, time precision = 10 ps

module lab4tb;
    logic [1:0] a;   // 2-bit input signal a
    logic [1:0] b;   // 2-bit input signal b

    logic r1;        // Output R
    logic g1;        // Output G
    logic b1;        // Output B

    localparam period = 10;

    // Instantiating the lab4 module (UUT)
    lab4 UUT (
        .a(a),
        .b(b),
        .R(r1),
        .G(g1),
        .B(b1)
    );

    initial begin
        // Apply different combinations of inputs (a and b) to test all cases
        a = 2'b00; b = 2'b00; #period;
        a = 2'b00; b = 2'b01; #period;
        a = 2'b00; b = 2'b10; #period;
        a = 2'b00; b = 2'b11; #period;
        a = 2'b01; b = 2'b00; #period;
        a = 2'b01; b = 2'b01; #period;
        a = 2'b01; b = 2'b10; #period;
        a = 2'b01; b = 2'b11; #period;
        a = 2'b10; b = 2'b00; #period;
        a = 2'b10; b = 2'b01; #period;
        a = 2'b10; b = 2'b10; #period;
        a = 2'b10; b = 2'b11; #period;
        a = 2'b11; b = 2'b00; #period;
        a = 2'b11; b = 2'b01; #period;
        a = 2'b11; b = 2'b10; #period;
        a = 2'b11; b = 2'b11; #period;

        // End simulation after all input combinations
        $stop;
    end

    initial begin
        // Print signal values every time they change
        $monitor("Time = %0t | a = %b, b = %b, R = %b, G = %b, B = %b", $time, a, b, r1, g1, b1);
    end

endmodule


