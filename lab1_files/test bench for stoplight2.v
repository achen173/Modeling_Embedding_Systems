
// Code your testbench here
// or browse Examples
`timescale 1 ns / 1 ps
module test;
   reg Ped,CLK;
   stoplight2 x1(Ped,CLK,SigG,SigY,SigR); //instantiate module under test
   initial begin
      x1.S4 = 0;
      x1.S3 = 0;
      x1.S2 = 0;
      x1.S1 = 0; //set initial state inside module
      x1.S0 = 0;
      CLK = 0;
      Ped = $random;
      #1000000 $finish;  //how long to run before stopping
   end
   
   always #0.5 CLK=~CLK; //clock toggle every 0.5 ns
   always #200 x1.S4 = 0;
   always #200 x1.S3 = 0;
   always #200 x1.S2 = 0;
   always #200 x1.S1 = 0;
   always #200 x1.S0 = 0;
   always #200 Ped = $random;
     
   always @(posedge CLK) begin //each cycle, print state and set next input
     if ({x1.S4,x1.S3,x1.S2,x1.S1,x1.S0} == 5'b01000) begin //did we hit target state?
       $display("%8d",$time,"  state:",x1.S4,x1.S3,x1.S2,x1.S1,x1.S0," SigGYR:",x1.SigG,x1.SigY,x1.SigR," (reached target)");
      end
   end
endmodule

