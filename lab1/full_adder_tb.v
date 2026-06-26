`timescale 1ns / 1ps

module full_adder_tb;

reg a, b,c;
wire c1,z;

full_adder uut(.a(a),.b(b),.c(c),.z(z),.cc(c1));

initial begin
$monitor("t=%0t a=%b b=%b c=%b z=%b c1=%b", $time, a , b,c,z,c1);

$dumpfile("full_adder.vcd");
$dumpvars(0,uut);

a=0;
b=0;
c=0;
#100;

a=0;
b=0;
c=1;
#100;


a=0;
b=1;
c=0;
#100;


a=0;
b=1;
c=1;
#100;

a=1;
b=0;
c=0;
#100;

a=1;
b=0;
c=1;
#100;


a=1;
b=1;
c=0;
#100;


a=1;
b=1;
c=1;
#100;

end 
endmodule
