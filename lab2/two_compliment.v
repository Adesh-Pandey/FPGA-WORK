module twos_compliment(input [7:0] inp, output [7:0] out);
assign out = ~inp + 1;
endmodule
