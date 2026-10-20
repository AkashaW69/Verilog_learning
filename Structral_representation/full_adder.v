module full_adder( A, B, Cin, Cout, S);
    input A, B, Cin;
    output S, Cout;

    wire w1, w2, w3;

    xor g1(S, A, B, Cin);
    
    and g2(w1, A, B);
    and g3(w2, A, Cin);
    and g4(w3, B, Cin);

    or g5(Cout, w1, w2, w3);

endmodule    