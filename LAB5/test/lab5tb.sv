
 `timescale 1ns/10ps  // Time unit = 1 ns, Time precision = 10 ps

module lab5tb;
    // Declare inputs
    logic [3:0] a;       
    logic [2:0] s;       

    // Declare outputs
    logic segA, segB, segC, segD, segE, segF, segG;  
    logic [7:0] A;  

    localparam period = 10;

    // Instantiate the module under test (UUT)
    lab5 UUT (
        .a(a),
        .s(s),
        .segA(segA), .segB(segB), .segC(segC), .segD(segD),
        .segE(segE), .segF(segF), .segG(segG),
        .A(A)
    );

    initial begin
        // Test all combinations of 'a' and 's'
        a = 4'b0000; s = 3'b000; #period;
        a = 4'b0000; s = 3'b001; #period;
        a = 4'b0000; s = 3'b010; #period;
        a = 4'b0000; s = 3'b011; #period;
        a = 4'b0000; s = 3'b100; #period;
        a = 4'b0000; s = 3'b101; #period;
        a = 4'b0000; s = 3'b110; #period;
        a = 4'b0000; s = 3'b111; #period;

        a = 4'b0001; s = 3'b000; #period;
        a = 4'b0001; s = 3'b001; #period;
        a = 4'b0001; s = 3'b010; #period;
        a = 4'b0001; s = 3'b011; #period;
        a = 4'b0001; s = 3'b100; #period;
        a = 4'b0001; s = 3'b101; #period;
        a = 4'b0001; s = 3'b110; #period;
        a = 4'b0001; s = 3'b111; #period;

        a = 4'b0010; s = 3'b000; #period;
        a = 4'b0010; s = 3'b001; #period;
        a = 4'b0010; s = 3'b010; #period;
        a = 4'b0010; s = 3'b011; #period;
        a = 4'b0010; s = 3'b100; #period;
        a = 4'b0010; s = 3'b101; #period;
        a = 4'b0010; s = 3'b110; #period;
        a = 4'b0010; s = 3'b111; #period;

        a = 4'b0011; s = 3'b000; #period;
        a = 4'b0011; s = 3'b001; #period;
        a = 4'b0011; s = 3'b010; #period;
        a = 4'b0011; s = 3'b011; #period;
        a = 4'b0011; s = 3'b100; #period;
        a = 4'b0011; s = 3'b101; #period;
        a = 4'b0011; s = 3'b110; #period;
        a = 4'b0011; s = 3'b111; #period;

        a = 4'b0100; s = 3'b000; #period;
        a = 4'b0100; s = 3'b001; #period;
        a = 4'b0100; s = 3'b010; #period;
        a = 4'b0100; s = 3'b011; #period;
        a = 4'b0100; s = 3'b100; #period;
        a = 4'b0100; s = 3'b101; #period;
        a = 4'b0100; s = 3'b110; #period;
        a = 4'b0100; s = 3'b111; #period;

        a = 4'b0101; s = 3'b000; #period;
        a = 4'b0101; s = 3'b001; #period;
        a = 4'b0101; s = 3'b010; #period;
        a = 4'b0101; s = 3'b011; #period;
        a = 4'b0101; s = 3'b100; #period;
        a = 4'b0101; s = 3'b101; #period;
        a = 4'b0101; s = 3'b110; #period;
        a = 4'b0101; s = 3'b111; #period;

        a = 4'b0110; s = 3'b000; #period;
        a = 4'b0110; s = 3'b001; #period;
        a = 4'b0110; s = 3'b010; #period;
        a = 4'b0110; s = 3'b011; #period;
        a = 4'b0110; s = 3'b100; #period;
        a = 4'b0110; s = 3'b101; #period;
        a = 4'b0110; s = 3'b110; #period;
        a = 4'b0110; s = 3'b111; #period

        a = 4'b0111; s = 3'b000; #period;
        a = 4'b0111; s = 3'b001; #period;
        a = 4'b0111; s = 3'b010; #period;
        a = 4'b0111; s = 3'b011; #period;
        a = 4'b0111; s = 3'b100; #period;
        a = 4'b0111; s = 3'b101; #period;
        a = 4'b0111; s = 3'b110; #period;
        a = 4'b0111; s = 3'b111; #period;

        a = 4'b1000; s = 3'b000; #period;
        a = 4'b1000; s = 3'b001; #period;
        a = 4'b1000; s = 3'b010; #period;
        a = 4'b1000; s = 3'b011; #period;
        a = 4'b1000; s = 3'b100; #period;
        a = 4'b1000; s = 3'b101; #period;
        a = 4'b1000; s = 3'b110; #period;
        a = 4'b1000; s = 3'b111; #period;

        a = 4'b1001; s = 3'b000; #period;
        a = 4'b1001; s = 3'b001; #period;
        a = 4'b1001; s = 3'b010; #period;
        a = 4'b1001; s = 3'b011; #period;
        a = 4'b1001; s = 3'b100; #period;
        a = 4'b1001; s = 3'b101; #period;
        a = 4'b1001; s = 3'b110; #period;
        a = 4'b1001; s = 3'b111; #period;

        a = 4'b1010; s = 3'b000; #period;
        a = 4'b1010; s = 3'b001; #period;
        a = 4'b1010; s = 3'b010; #period;
        a = 4'b1010; s = 3'b011; #period;
        a = 4'b1010; s = 3'b100; #period;
        a = 4'b1010; s = 3'b101; #period;
        a = 4'b1010; s = 3'b110; #period;
        a = 4'b1010; s = 3'b111; #period;
  
        a = 4'b1011; s = 3'b000; #period;
        a = 4'b1011; s = 3'b001; #period;
        a = 4'b1011; s = 3'b010; #period;
        a = 4'b1011; s = 3'b011; #period;
        a = 4'b1011; s = 3'b100; #period;
        a = 4'b1011; s = 3'b101; #period;
        a = 4'b1011; s = 3'b110; #period;
        a = 4'b1011; s = 3'b111; #period;

        a = 4'b1100; s = 3'b000; #period;
        a = 4'b1100; s = 3'b001; #period;
        a = 4'b1100; s = 3'b010; #period;
        a = 4'b1100; s = 3'b011; #period;
        a = 4'b1100; s = 3'b100; #period;
        a = 4'b1100; s = 3'b101; #period;
        a = 4'b1100; s = 3'b110; #period;
        a = 4'b1100; s = 3'b111; #period;

        a = 4'b1101; s = 3'b000; #period;
        a = 4'b1101; s = 3'b001; #period;
        a = 4'b1101; s = 3'b010; #period;
        a = 4'b1101; s = 3'b011; #period;
        a = 4'b1101; s = 3'b100; #period;
        a = 4'b1101; s = 3'b101; #period;
        a = 4'b1101; s = 3'b110; #period;
        a = 4'b1101; s = 3'b111; #period;

        a = 4'b1110; s = 3'b000; #period;
        a = 4'b1110; s = 3'b001; #period;
        a = 4'b1110; s = 3'b010; #period;
        a = 4'b1110; s = 3'b011; #period;
        a = 4'b1110; s = 3'b100; #period;
        a = 4'b1110; s = 3'b101; #period;
        a = 4'b1110; s = 3'b110; #period;
        a = 4'b1110; s = 3'b111; #period;
        

        a = 4'b1111; s = 3'b000; #period;
        a = 4'b1111; s = 3'b001; #period;
        a = 4'b1111; s = 3'b010; #period;
        a = 4'b1111; s = 3'b011; #period;
        a = 4'b1111; s = 3'b100; #period;
        a = 4'b1111; s = 3'b101; #period;
        a = 4'b1111; s = 3'b110; #period;
        a = 4'b1111; s = 3'b111; #period;

        // End simulation
        $stop;
    end

    initial begin
        // Monitor and print all signals
        $monitor("Time = %0t | a = %b, s = %b | segA = %b, segB = %b, segC = %b, segD = %b, segE = %b, segF = %b, segG = %b | A = %b",
                 $time, a, s, segA, segB, segC, segD, segE, segF, segG, A);
    end

endmodule
