module full_adder(input a, b, c, output z, cc);

wire s1,c1;
wire c2;

half_adder ha1(.a(b),.b(c),.z(s1),.c(c1));

half_adder ha2(.a(a), .b(s1),.z(z),.c(c2));

assign cc = c2 | c1 ;

endmodule

