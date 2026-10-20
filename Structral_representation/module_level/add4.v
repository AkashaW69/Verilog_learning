
module add4(S, Cy4, Cy_in, x, y);

    input [3:0] x, y;
    input Cy_in;
    output [3:0] S;
    output Cy4;

    wire [2:0] Cy_out;

    add b0(S[0], Cy_out[0], x[0], y[0], Cy_in);
    add b1(S[1], Cy_out[1], x[1], y[1], Cy_out[0]);
    add b2(S[2], Cy_out[2], x[2], y[2], Cy_out[1]);
    add b3(S[3], Cy4, x[3], y[3], Cy_out[2]);

endmodule