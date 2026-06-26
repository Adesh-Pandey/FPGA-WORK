module eight_bit_adder(input [7:0] a, b, output [7:0] o, output c);
    wire c1;
    four_bit_adder fba1(a[3:0], b[3:0], o[3:0], c1);
    four_bit_adder fba2(a[7:4], b[7:4], o[7:4], c);
endmodule


// module eight_bit_adder(input[7:0] a,b, output [7:0]o,output c);
// wire c1,c2,c3,c4,c5,c6,c7;
//
// full_adder f1(a[0],b[0],1'b0,o[0],c1);
// full_adder f2(a[1],b[1],c1,o[1],c2);
// full_adder f3(a[2],b[2],c2,o[2],c3);
// full_adder f4(a[3],b[3],c3,o[3],c4);
// full_adder f5(a[4],b[4],c4,o[4],c5);
// full_adder f6(a[5],b[5],c5,o[5],c6);
// full_adder f7(a[6],b[6],c6,o[6],c7);
// full_adder f8(a[7],b[7],c7,o[7],c);
//
// endmodule
