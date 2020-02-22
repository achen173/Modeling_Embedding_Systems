`timescale 1 ns / 1 ps
module test;
   reg A,CLK;
   ex x1(CLK,A); //instantiate module under test
   initial begin
      x1.s1 = 0; //set initial state inside module
      x1.s0 = 0;
      CLK = 0;
      A = 0;
      $dumpfile("test.vcd"); //print for waveform viewing
      $dumpvars(0,test); 
      #20 $finish;  //how long to run before stopping
   end
   
   always #0.5 CLK=~CLK; //clock toggle every 0.5 ns
   
   always @(posedge CLK) begin //each cycle, print state and set next input
      if ({x1.s1,x1.s0} == 2'b10) begin //did we hit target state?
	 $display("%8d",$time,"  state:",x1.s1,x1.s0, "  (reached target)");
	 //$finish;	//stop if reached target state   
      end
      else begin
	 $display("%8d",$time,"  state:",x1.s1,x1.s0);
      end
      A = $random;
   end
endmodule

module ex(clock,a);
   input clock,a;
   reg 	 s0,s1;
   wire  b,ns0,ns1;
   and g0(b,a,s0);
   not g1(ns0,b);
   not g2(ns1,s1);
   always @(posedge clock) begin
      s0<=ns0;
      s1<=ns1;
   end
endmodule

