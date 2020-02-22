// Code your testbench here
// or browse Examples
`timescale 1 ns / 1 ps
module test;
   reg START,B0,B1,B2,B3,A0,A1,A2,A3,CLK;
   ex2 x1(clock,START,B0,B1,B2,B3,A0,A1,A2,A3,CNTVCO2,CNTVCON2,READY,P0,P1,P2,P3,P4,P5,P6,P7); //instantiate module under test
   initial begin
   START = $random;
    B0 = $random;
    B1 = $random;
    B2 = $random;
    B3 = $random;
    A0 = $random;
    A1 = $random;
    A2 = $random;
    A3 = $random;
    x1.S0 = 0;
     x1.S1 = 0;
     x1.S2 = 0;
     x1.S3 = 0;
     x1.S4 = 0;
     x1.S5 = 0;
     x1.S6 = 0;
     x1.S7 = 0;
     x1.S8 = 0;
     x1.S9 = 0;
     x1.S10 = 0;
     x1.S11 = 0;
     x1.S12 = 0;
     x1.S13 = 0;
     x1.S14 = 0;
     CLK = 0;
     #1000000 $finish;  //how long to run before stopping
   end
   
     always #0.5 CLK=~CLK; //clock toggle every 0.5 ns
     always #200 START = $random;
    always #200 B0 = $random;
    always #200 B1 = $random;
    always #200 B2 = $random;
    always #200 B3 = $random;
    always #200 A0 = $random;
    always #200 A1 = $random;
    always #200 A2 = $random;
    always #200 A3 = $random;
     always #200 x1.S0 = 0;
      always #200 x1.S1 = 0;
      always #200 x1.S2 = 0;
      always #200 x1.S3 = 0;
      always #200 x1.S4 = 0;
      always #200 x1.S5 = 0;
      always #200 x1.S6 = 0;
      always #200 x1.S7 = 0;
      always #200 x1.S8 = 0;
      always #200 x1.S9 = 0;
      always #200 x1.S10 = 0;
      always #200 x1.S11 = 0;
      always #200 x1.S12 = 0;
      always #200 x1.S13 = 0;
      always #200 x1.S14 = 0;
     
   always @(posedge CLK) begin //each cycle, print state and set next input
     if ({x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0} == 15'b111111111111111) begin //did we hit target state?
       $display("%8d",$time,"  state:",x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0," Input:",x1.START, "  (reached target)");
      end
   end
endmodule