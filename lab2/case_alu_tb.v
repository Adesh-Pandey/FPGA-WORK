`timescale 1ns / 1ps

module eight_bit_alu_case_tb;

reg [7:0] a, b;
reg [2:0] sel;
wire [7:0] o;
wire c;

eight_bit_alu_case alu(a, b, sel, o, c);

initial begin
$monitor("t=%0t sel=%b a=%b b=%b o=%b c=%b", $time, sel, a, b, o, c);

$dumpfile("eight_bit_alu.vcd");
$dumpvars(0,alu);

a=8'b00001111;
b=8'b00000001;

sel=3'b000;
#100;

sel=3'b001;
#100;

sel=3'b010;
#100;

sel=3'b011;
#100;

sel=3'b100;
#100;

sel=3'b101;
#100;

sel=3'b110;
#100;

sel=3'b111;
#100;

end
endmodule
