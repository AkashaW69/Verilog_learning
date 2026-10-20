module add( sum, carry, a, b, c_in);
     input a, b, c_in;
     output sum, carry;

     sum s1( sum, a, b, c_in);
     carry c1(carry, a, b, c_in);

endmodule
