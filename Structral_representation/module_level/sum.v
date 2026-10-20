module sum( sum, a, b, cy_in);
    input a, b, cy_in;
    output sum;


   xor g1( sum, a, b, cy_in);

endmodule