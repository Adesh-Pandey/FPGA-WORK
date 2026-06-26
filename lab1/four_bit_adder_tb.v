`timescale 1ns / 1ps

module full_adder_tb;

reg [0:3]a,b;
wire [0:3] s;
wire c;

four_bit_adder fba(a,b,s,c);

initial begin
$monitor("t=%0t c=%b s0=%b s1=%b s2=%b s3=%b", $time, c ,s[0],s[1],s[2],s[3]);

$dumpfile("full_adder.vcd");
$dumpvars(0,fba);

a=4'b1010;
b=4'b1010;
#100;

a=4'b1111;
b=4'b1111;
#100;

end 
endmodule
