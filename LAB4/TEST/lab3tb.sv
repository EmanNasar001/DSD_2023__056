`timescale 1ns/10ps // time unit = 1 ns, time precision = 10 ps

module lab3tb;

    // Testbench signals
    logic a1, b1, c1, y1, x1;
    localparam period = 10;

    // Instantiate the Unit Under Test (UUT)
    lab3 UUT(
        .a(a1),
        .b(b1),
        .c(c1),
        .x(x1),
        .y(y1)
    );

    // Testbench stimulus block
    initial begin
        // Provide different combinations of the inputs to check validity of code
        a1 = 0; b1 = 0; c1 = 0;
        #period;
        a1 = 0; b1 = 0; c1 = 1;
        #period;
        a1 = 0; b1 = 1; c1 = 0;
        #period;
        a1 = 0; b1 = 1; c1 = 1;
        #period;
        a1 = 1; b1 = 0; c1 = 0;
        #period;
        a1 = 1; b1 = 0; c1 = 1;
        #period;
        a1 = 1; b1 = 1; c1 = 0;
        #period;
        a1 = 1; b1 = 1; c1 = 1;
        #period;
        $stop; // Stop simulation
    end

    // Monitor signal changes
    initial begin
        // The following system task will print out the signal values
        // every time they change on the Transcript Window
        $monitor("x=%b, y=%b, a=%b, b=%b, c=%b", x1, y1, a1, b1, c1);
    end

endmodule
