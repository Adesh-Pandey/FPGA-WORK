module four_bit_adder(input[3:0] a,b, output [3:0]o,output c);
wire c1,c2,c3;

full_adder f1(a[0],b[0],1'b0,o[0],c1);
full_adder f2(a[1],b[1],c1,o[1],c2);
full_adder f3(a[2],b[2],c2,o[2],c3);
full_adder f4(a[3],b[3],c3,o[3],c);

endmodule
