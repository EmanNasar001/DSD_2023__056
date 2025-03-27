`timescale 1ns / 10ps  // Time unit = 1 ns, time precision = 10 ps

module lab7tbmay;
    // Testbench signals
    logic clk;
    logic reset;
    logic write;
    logic [2:0] sel;
    logic [3:0] number;
    logic [7:0] an;
    logic segA, segB, segC, segD, segE, segF, segG;
    

    localparam period = 10;

    // Instantiating the lab7new module (UUT)
    lab7new UUT (
        .clk(clk),
        .reset(reset),
        .write(write),
        .sel(sel),
        .number(number),
        .an(an),
        .segA(segA), .segB(segB), .segC(segC), .segD(segD), .segE(segE), .segF(segF), .segG(segG)
        
    );

always #5 clk = ~clk;      // a 100 MHz clock

    initial begin
        $display("Starting testbench...");
        clk = 0;
        reset = 1;
        write = 0;
        number = 4'b0000;
        sel = 3'b000;
        
        #10 reset = 0;
        
// storing any desired number
        #10 write = 1; sel = 3'b000; number = 4'b0010; // Store '2'
        #10 write = 1; sel = 3'b001; number = 4'b0000; // Store '0'
        #10 write = 1; sel = 3'b010; number = 4'b0010; // Store '2'
        #10 write = 1; sel = 3'b011; number = 4'b0011; // Store '3'
        #10 write = 1; sel = 3'b100; number = 4'b1110; // Store 'E'
        #10 write = 1; sel = 3'b101; number = 4'b1110; // Store 'E'
        #10 write = 1; sel = 3'b110; number = 4'b0101; // Store '5'
        #10 write = 1; sel = 3'b111; number = 4'b0110; // Store '6'
        
        #10 write = 0; 
        
        //  multiplexing to cycle through displays
        #100;
 
    end
    
    initial begin
        // Print signal values on changes
        $monitor("Time = %0t | clk = %b | reset = %b | write = %b | sel = %b | number = %b | seg=%b%b%b%b%b%b%b | an = %b", 
                 $time, clk, reset, write, sel, number, segA, segB, segC, segD, segE, segF, segG, an);
    end
endmodule
