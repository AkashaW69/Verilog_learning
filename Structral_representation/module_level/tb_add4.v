
`timescale 1ns/1ps

module tb_add4;

    // Inputs
    reg [3:0] x, y;
    reg Cy_in;

    // Outputs
    wire [3:0] S;
    wire Cy4;

    // Instantiate the 4-bit adder
    add4 uut (
        .S(S),
        .Cy4(Cy4),
        .Cy_in(Cy_in),
        .x(x),
        .y(y)
    );

    initial begin

        $monitor("Time=%0t x=%b y=%b Cin=%b Sum=%b Cout=%b",
                  $time, x, y, Cy_in, S, Cy4);

        // Test 1: 0 + 0
        x = 4'b0000;
        y = 4'b0000;
        Cy_in = 0;
        #10;

        // Test 2: 3 + 2
        x = 4'b0011;
        y = 4'b0010;
        Cy_in = 0;
        #10;

        // Test 3: 5 + 3 + 1
        x = 4'b0101;
        y = 4'b0011;
        Cy_in = 1;
        #10;

        // Test 4: 15 + 1
        x = 4'b1111;
        y = 4'b0001;
        Cy_in = 0;
        #10;

        // Test 5: 15 + 15 + 1
        x = 4'b1111;
        y = 4'b1111;
        Cy_in = 1;
        #10;

        $finish;

    end

endmodule