`timescale 1ns/1ps

module tb_not_gate;

  reg A;
  wire Y;

  //connect the AND gate
 //creates an instance of the AND gate inside the test bench
//uut means unit under test
   not_gate uut (
      .A(A),
      .Y(Y)

);

   initial begin
 // Display signal values
        $monitor("Time=%0t A=%b Y=%b",
                 $time, A, Y);

     
   A = 0;
   #10;
//waits 10 simulation time units
   
   A = 1; 
   #10;
   
   $finish; // ends the simulation

end

endmodule
