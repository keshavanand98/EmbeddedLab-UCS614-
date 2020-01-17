module m1(A,B,C,D,E,F,G,H,I);
input A,B;
output C,D,E,F,G,H,I;
assign C=A&B;
assign D=A|B;
assign E=!(A&B);
assign F=!(A|B);
assign H=!A;
assign I=A^B;
assign G=!(A^B);
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

