`timescale 1ns/1ps

module tb_full_adder;

  reg A,B,Cin;
  wire S,Cout;

  //connect the AND gate
 //creates an instance of the AND gate inside the test bench
//uut means unit under test
   full_adder uut (
      .A(A),
      .B(B),
      .Cin(Cin),
      .S(S),
      .Cout(Cout)

);

   initial begin
 // Display signal values
        $monitor("Time=%0t A=%b B=%b Cin=%b S=%b Cout=%b",
                 $time, A, B, Cin, S, Cout);

     
   A = 0; B = 0; Cin=0;
   #10;
//waits 10 simulation time units
   
  A = 0; B = 0; Cin=1;

   #10;
 
A = 0; B = 1; Cin=0;

   #10;

A = 0; B = 1; Cin=1;
   #10;
A = 1; B = 0; Cin=0;
   #10;
A = 1; B = 0; Cin=1;
   #10;
A = 1; B = 1; Cin=0;
   #10;
A = 1; B = 1; Cin=1;
   #10;
   
   $finish; // ends the simulation

end

endmodule
