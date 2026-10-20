module carry( carry, a, b, cy_in);
        input a, b, cy_in;
        output carry;


     wire [3:0] w;

      and g1(w[0], a, b);
      and g2(w[1], a, cy_in);
      and g3(w[2], b, cy_in);

      or g4( carry, w[0], w[1], w[2]);

endmodule




