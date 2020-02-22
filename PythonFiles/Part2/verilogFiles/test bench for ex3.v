// Code your testbench here
// or browse Examples
`timescale 1 ns / 1 ps
module test;
   reg clock,Rdy1RtHS1,Rdy2RtHS1,Rdy1BmHS1,Rdy2BmHS1,InDoneHS1,RtTSHS1,TpArrayHS1,OutputHS1,WantBmHS1,WantRtHS1,OutAvHS1,FullOHS1,FullIHS1,Prog_2,Prog_1,Prog_0;
   ex3 x1(clock,Rdy1RtHS1,Rdy2RtHS1,Rdy1BmHS1,Rdy2BmHS1,InDoneHS1,RtTSHS1,TpArrayHS1,OutputHS1,WantBmHS1,WantRtHS1,OutAvHS1,FullOHS1,FullIHS1,Prog_2,Prog_1,Prog_0,S26,S25,S22,S27,S14,S11,S17,S10,S13,S16,S6,S12,S19,S18,S15,S7,S9,S20,S28,S23,S8,S21,S24); //instantiate module under test
   initial begin
    Rdy1RtHS1 = $random;
    Rdy2RtHS1 = $random;
    Rdy1BmHS1 = $random;
    Rdy2BmHS1 = $random;
    InDoneHS1 = $random;
    RtTSHS1 = $random;
    TpArrayHS1 = $random;
    OutputHS1 = $random;
    WantBmHS1 = $random;
    WantRtHS1 = $random;
    OutAvHS1 = $random;
    FullOHS1 = $random;
    FullIHS1 = $random;
    Prog_2 = $random;
    Prog_1 = $random;
    Prog_0 = $random;
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
        always #300 x1.S28 = 0;
        always #300 x1.S27 = 0;
        always #300 x1.S26 = 0;
        always #300 x1.S25 = 0;
        always #300 x1.S24 = 0;
        always #300 x1.S23 = 0;
        always #300 x1.S22 = 0;
        always #300 x1.S21 = 0;
        always #300 x1.S20 = 0;
        always #300 x1.S19 = 0;
        always #300 x1.S18 = 0;
        always #300 x1.S17 = 0;
        always #300 x1.S16 = 0;
        always #300 x1.S15 = 0;
        always #300 x1.S14 = 0;
        always #300 x1.S13 = 0;
        always #300 x1.S12 = 0;
        always #300 x1.S11 = 0;
        always #300 x1.S10 = 0;
        always #300 x1.S9 = 0;
        always #300 x1.S8 = 0;
        always #300 x1.S7 = 0;
        always #300 x1.S6 = 0;
        always #300 x1.S5 = 0;
        always #300 x1.S4 = 0;
        always #300 x1.S3 = 0;
        always #300 x1.S2 = 0;
        always #300 x1.S1 = 0;
        always #300 x1.S0 = 0;
        always #300 Rdy1RtHS1 = $random;
        always #300 Rdy2RtHS1 = $random;
        always #300 Rdy1BmHS1 = $random;
        always #300 Rdy2BmHS1 = $random;
        always #300 InDoneHS1 = $random;
        always #300 RtTSHS1 = $random;
        always #300 TpArrayHS1 = $random;
        always #300 OutputHS1 = $random;
        always #300 WantBmHS1 = $random;
        always #300 WantRtHS1 = $random;
        always #300 OutAvHS1 = $random;
        always #300 FullOHS1 = $random;
        always #300 FullIHS1 = $random;
        always #300 Prog_2 = $random;
        always #300 Prog_1 = $random;
        always #300 Prog_0 = $random;
     
   always @(posedge clock) begin //each cycle, print state and set next input
     if ({x1.S28,x1.S27,x1.S26,x1.S25,x1.S24,x1.S23,x1.S22,x1.S21,x1.S20,x1.S19,x1.S18,x1.S17,x1.S16,x1.S15,x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0} == 29'b00000000010110110000011000001) begin //did we hit target state?
       $display("%8d",$time,"  state:",x1.S28,x1.S27,x1.S26,x1.S25,x1.S24,x1.S23,x1.S22,x1.S21,x1.S20,x1.S19,x1.S18,x1.S17,x1.S16,x1.S15,x1.S14,x1.S13,x1.S12,x1.S11,x1.S10,x1.S9,x1.S8,x1.S7,x1.S6,x1.S5,x1.S4,x1.S3,x1.S2,x1.S1,x1.S0, "  (reached target)");
      end
   end
endmodule