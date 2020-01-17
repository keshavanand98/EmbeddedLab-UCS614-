module m1(A,B,C,D,E,F,G,H,I);
input A,B;
output C,D,E,F,G,H,I;
and(C,A,B);
or(D,A,B);
nand(E,A,B);
xor(F,A,B);
nor(G,A,B);
xnor(H,A,B);
not(I,A);
endmodule

module test;
reg a,b;
wire c,d,e,f,g,h,i;
m1 g1(a,b,c,d,e,f,g,h,i);
initial begin
$display("A\tB\tC\tD\tE\tF\tG\tH\tI");
$monitor("%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",a,b,c,d,e,f,g,h,i);
$dumpfile("first.vcd");
$dumpvars(0,test);
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
#10
$finish;
end
endmodule
