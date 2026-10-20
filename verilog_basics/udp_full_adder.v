primitive Carry( Cout, A, B, Cin);
        output Cout;
        input A, B, Cin;


   table
     // A B Cin : Cout
        0 0 ?   : 0; 
        0 ? 0   : 0; 
        ? 0 0   : 0; 
        ? 1 1   : 1;
        1 ? 1   : 1;
        1 1 ?   : 1; 
   endtable
endprimitive

primitive Sum( S, A, B, Cin);
        output S;
        input A, B, Cin;


   table
     // A B Cin : S
        0 0 0   : 0;
        0 0 1   : 1; 
        0 1 0   : 1; 
        0 1 1   : 0; 
        1 0 0   : 1;
        1 0 1   : 0;
        1 1 0   : 0;
        1 1 1   : 0;
   endtable
endprimitive


module full_adder( A, B, Cin, Cout,S);
    input A, B, Cin;
    output Cout,S;
   
  Sum u1 ( S, A, B, Cin);
  Carry u2 ( Cout, A, B,Cin);

 endmodule


