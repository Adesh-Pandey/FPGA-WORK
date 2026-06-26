`timescale 1ns / 1ps

module half_adder_tb;

reg a, b;
wire c,z;

half_adder uut(.a(a),.b(b),.z(z),.c(c));

initial begin
$monitor("t=%0t a=%b b=%b z=%b c=%b", $time, a , b,z,c);

$dumpfile("half_adder.vcd");
$dumpvars(0,uut);

a=0;
b=0;
#100;

a=0;
b=1;
#100;


a=1;
b=0;
#100;

a=1;
b=1;
#100;

end 
endmodule
