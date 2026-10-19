`timescale 1ns/1ps

module tb_or_gate;

  reg A, B;
  wire Y;

  //connect the AND gate
 //creates an instance of the AND gate inside the test bench
//uut means unit under test
   or_gate uut (
      .A(A),
      .B(B),
      .Y(Y)

);

   initial begin
 // Display signal values
        $monitor("Time=%0t A=%b B=%b Y=%b",
                 $time, A, B, Y);

     
   A = 0; B = 0;
   #10;
//waits 10 simulation time units
   
   A = 0; B = 1;
   #10;
   
   A = 1; B = 0;
   #10;
   
   A = 1; B = 1;
   #10;

   $finish; // ends the simulation

end

endmodule
