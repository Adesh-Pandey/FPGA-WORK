module half_adder(input a, b, output z, c);
assign z = a ^ b;
assign c = a & b;
endmodule
