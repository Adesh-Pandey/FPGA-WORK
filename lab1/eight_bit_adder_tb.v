`timescale 1ns / 1ps

module eight_bit_adder_tb;

reg [0:7]a,b;
wire [0:7] s;
wire c;

eight_bit_adder eba(a,b,s,c);

initial begin

$monitor("t=%0t c=%b s0=%b s1=%b s2=%b s3=%b s4=%b s5=%b s6=%b s7=%b", $time, c ,s[0],s[1],s[2],s[3],s[4],s[5],s[6],s[7]);

$dumpfile("eight_bit_adder.vcd");
$dumpvars(0,eba);

a=8'b10101011;
b=8'b10101011;
#100;

a=8'b11111111;
b=8'b11111111;
#100;

end 
endmodule
