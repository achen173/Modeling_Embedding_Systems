// Code your testbench here
// or browse Examples
`timescale 1 ns / 1 ps
module test;
   reg clock,X,Clear,C_32,C_31,C_30,C_29,C_28,C_27,C_26,C_25,C_24,C_23,C_22,C_21,C_20,C_19,C_18,C_17,C_16,C_15,C_14,C_13,C_12,C_11,C_10,C_9,C_8,C_7,C_6,C_5,C_4,C_3,C_2,C_1,C_0;
   ex4 x1(clock,X,Clear,C_32,C_31,C_30,C_29,C_28,C_27,C_26,C_25,C_24,C_23,C_22,C_21,C_20,C_19,C_18,C_17,C_16,C_15,C_14,C_13,C_12,C_11,C_10,C_9,C_8,C_7,C_6,C_5,C_4,C_3,C_2,C_1,C_0,W,Z); //instantiate module under test
   initial begin
    X = $random;
    Clear = $random;
    C_32 = $random;
    C_31 = $random;
    C_30 = $random;
    C_29 = $random;
    C_28 = $random;
    C_27 = $random;
    C_26 = $random;
    C_25 = $random;
    C_24 = $random;
    C_23 = $random;
    C_22 = $random;
    C_21 = $random;
    C_20 = $random;
    C_19 = $random;
    C_18 = $random;
    C_17 = $random;
    C_16 = $random;
    C_15 = $random;
    C_14 = $random;
    C_13 = $random;
    C_12 = $random;
    C_11 = $random;
    C_10 = $random;
    C_9 = $random;
    C_8 = $random;
    C_7 = $random;
    C_6 = $random;
    C_5 = $random;
    C_4 = $random;
    C_3 = $random;
    C_2 = $random;
    C_1 = $random;
    C_0 = $random;
    x1.S31 = 0;
    x1.S30 = 0;
    x1.S29 = 0;
    x1.S28 = 0;
    x1.S27 = 0;
    x1.S26 = 0;
    x1.S25 = 0;
    x1.S24 = 0;
    x1.S23 = 0;
    x1.S22 = 0;
    x1.S21 = 0;
    x1.S20 = 0;
    x1.S19 = 0;
    x1.S18 = 0;
    x1.S17 = 0;
    x1.S16 = 0;
    x1.S15 = 0;
    x1.S14 = 0;
    x1.S13 = 0;
    x1.S12 = 0;
    x1.S11 = 0;
    x1.S10 = 0;
    x1.S9 = 0;
    x1.S8 = 0;
    x1.S7 = 0;
    x1.S6 = 0;
    x1.S5 = 0;
    x1.S4 = 0;
    x1.S3 = 0;
    x1.S2 = 0;
    x1.S1 = 0;
    x1.S0 = 0;
      clock = 0;
     #1000000 $finish;  //how long to run before stopping
   end
   
     always #0.5 clock=~clock; //clock toggle every 0.5 ns
        always #350 x1.S31 = 0;
        always #350 x1.S30 = 0;
        always #350 x1.S29 = 0;
        always #350 x1.S28 = 0;
        always #350 x1.S27 = 0;
        always #350 x1.S26 = 0;
        always #350 x1.S25 = 0;
        always #350 x1.S24 = 0;
        always #350 x1.S23 = 0;
        always #350 x1.S22 = 0;
        always #350 x1.S21 = 0;
        always #350 x1.S20 = 0;
        always #350 x1.S19 = 0;
        always #350 x1.S18 = 0;
        always #350 x1.S17 = 0;
        always #350 x1.S16 = 0;
        always #350 x1.S15 = 0;
        always #350 x1.S14 = 0;
        always #350 x1.S13 = 0;
        always #350 x1.S12 = 0;
        always #350 x1.S11 = 0;
        always #350 x1.S10 = 0;
        always #350 x1.S9 = 0;
        always #350 x1.S8 = 0;
        always #350 x1.S7 = 0;
        always #350 x1.S6 = 0;
        always #350 x1.S5 = 0;
        always #350 x1.S4 = 0;
        always #350 x1.S3 = 0;
        always #350 x1.S2 = 0;
        always #350 x1.S1 = 0;
        always #350 x1.S0 = 0;
        always #350 X = $random;
        always #350 Clear = $random;
        always #350 C_32 = $random;
        always #350 C_31 = $random;
        always #350 C_30 = $random;
        always #350 C_29 = $random;
        always #350 C_28 = $random;
        always #350 C_27 = $random;
        always #350 C_26 = $random;
        always #350 C_25 = $random;
        always #350 C_24 = $random;
        always #350 C_23 = $random;
        always #350 C_22 = $random;
        always #350 C_21 = $random;
        always #350 C_20 = $random;
        always #350 C_19 = $random;
        always #350 C_18 = $random;
        always #350 C_17 = $random;
        always #350 C_16 = $random;
        always #350 C_15 = $random;
        always #350 C_14 = $random;
        always #350 C_13 = $random;
        always #350 C_12 = $random;
        always #350 C_11 = $random;
        always #350 C_10 = $random;
        always #350 C_9 = $random;
        always #350 C_8 = $random;
        always #350 C_7 = $random;
        always #350 C_6 = $random;
        always #350 C_5 = $random;
        always #350 C_4 = $random;
        always #350 C_3 = $random;
        always #350 C_2 = $random;
        always #350 C_1 = $random;
        always #350 C_0 = $random;
     
   always @(posedge clock) begin //each cycle, print state and set next input
     if ({x1.S31,x1.S30,x1.S29,x1.S28,x1.S27,x1.S26,x1.S25,x1.S24,x1.S23,x1.S22,x1.S21,x1.S20,x1.S19,x1.S18,x1.S17,x1.S16,x1.S15,x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0} == 32'b00000000000000000000000000000000) begin //did we hit target state?
       $display("%8d",$time,"  state:",x1.S31,x1.S30,x1.S29,x1.S28,x1.S27,x1.S26,x1.S25,x1.S24,x1.S23,x1.S22,x1.S21,x1.S20,x1.S19,x1.S18,x1.S17,x1.S16,x1.S15,x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0, "  (reached target)");
      end
   end
endmodule