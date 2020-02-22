module ex1(clock,A,Y);
input clock;
input A;
output Y;
reg S0,S1;
wire X1,NS0,NS1;
and g0(X1,S0,S1);
and g1(NS1,A,X1);
not g2(NS0,X1);
and g3(Y,A,X1);
always @(posedge clock) begin
S1<=NS1;
S0<=NS0;
end
endmodule
//State:11