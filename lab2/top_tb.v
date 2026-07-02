`timescale 1ns / 1ps

module top_tb;

reg clk;
reg [7:0] ins;

top uut(clk, ins);

always #5 clk = ~clk;

initial begin
$monitor("t=%0t ins=%b wr=%d we=%b data=%d", $time, ins, uut.write_reg, uut.write_enable, uut.data);

$dumpfile("top.vcd");
$dumpvars(0,uut);

clk=0;

uut.rg.regs[0]=8'd5;
uut.rg.regs[1]=8'd3;
uut.rg.regs[2]=8'd10;
uut.rg.regs[3]=8'd4;
uut.rg.regs[4]=8'd8;
uut.rg.regs[5]=8'd1;
uut.rg.regs[6]=8'd20;
uut.rg.regs[7]=8'd6;

ins=8'b00000000; // ADD A,B -> 8
#10;

ins=8'b00000001; // ADD C,D -> 14
#10;

ins=8'b00000010; // ADD E,F -> 9
#10;

ins=8'b00000011; // ADD G,H -> 26
#10;

$finish;
end
endmodule
