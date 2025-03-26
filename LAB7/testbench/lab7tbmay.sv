`timescale 1ns / 10ps  // Time unit = 1 ns, time precision = 10 ps

module lab7tbmay;
    // Testbench signals
    logic clk;
    logic reset;
    logic write;
    logic [2:0] sel;
    logic [3:0] number;
    logic segA, segB, segC, segD, segE, segF, segG;
    logic [7:0] an;

    localparam period = 10;

    // Instantiating the lab7new module (UUT)
    lab7new UUT (
        .clk(clk),
        .reset(reset),
        .write(write),
        .sel(sel),
        .number(number),
        .segA(segA), .segB(segB), .segC(segC), .segD(segD), .segE(segE), .segF(segF), .segG(segG),
        .an(an)
    );

    // Clock generation
    always #(period/2) clk <= ~clk;

    initial begin
        // Initialize signals
        clk <= 0;
        reset <= 1;
        write <= 0;
        sel <= 3'b000;
        number <= 4'b0000;  

        #100 reset <= 0;

        // Apply different values when write = 1
        write <= 1;
        #10 sel <= 3'b000; number <= 4'h2;
        #10 sel <= 3'b001; number <= 4'h0;
        #10 sel <= 3'b010; number <= 4'h2;
        #10 sel <= 3'b011; number <= 4'h3;
        #10 sel <= 3'b100; number <= 4'hE;
        #10 sel <= 3'b101; number <= 4'hE;
        #10 sel <= 3'b110; number <= 4'h5;
        #10 sel <= 3'b111; number <= 4'h6;
        #10 write <= 0;  // Stop writing

        // Simulate display cycling through stored values when write = 0
        repeat (10) begin // Repeat for multiple cycles to simulate FPGA behavior
            for (int i = 0; i < 8; i = i + 1) begin
                sel <= i;
                #20;
                $display("Time=%0t | sel=%b | seg=%b%b%b%b%b%b%b | an=%b", 
                         $time, sel, segA, segB, segC, segD, segE, segF, segG, an);
            end
        end

        #50;
        
    end

    initial begin
        // Print signal values on changes
        $monitor("Time = %0t | clk = %b | reset = %b | write = %b | sel = %b | number = %b | seg=%b%b%b%b%b%b%b | an = %b", 
                 $time, clk, reset, write, sel, number, segA, segB, segC, segD, segE, segF, segG, an);
    end

endmodule
