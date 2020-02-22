// Code your testbench here
// or browse Examples
`timescale 1 ns / 1 ps
module test;
   reg A,CLK;
  ex1 x1(CLK,A,Y); //instantiate module under test
   initial begin
      x1.S1 = 0; //set initial state inside module
      x1.S0 = 0;
      CLK = 0;
      A = $random;
      #1000000 $finish;  //how long to run before stopping
   end
   
   always #0.5 CLK=~CLK; //clock toggle every 0.5 ns
   always #100 x1.S1 = 0;
   always #100 x1.S0 = 0;
   always #100 A = $random;
     
   always @(posedge CLK) begin //each cycle, print state and set next input
     if ({x1.S1,x1.S0} == 2'b11) begin //did we hit target state?
      	$display("%8d",$time,"  state:",x1.S1,x1.S0," A:",x1.A, "  (reached target)");
      end
      //else begin
      //   $display("%8d",$time,"  state:",x1.S1,x1.S0," A:",x1.A, " Output: ", x1.Y);
      // end
      // A = $random;
   end
endmodule

