`timescale 1ns / 1ps

module control_tb;

reg [7:0] opcode;
wire [7:0] immediate;
wire [2:0] read_reg1, read_reg2, write_reg, alu_sel;
wire write_enable, comp, imm_reg2;

control cu(opcode, immediate, read_reg1, read_reg2, write_reg, write_enable, comp, imm_reg2, alu_sel);

initial begin
$monitor("t=%0t op=%b r1=%d r2=%d wr=%d we=%b sel=%b", $time, opcode, read_reg1, read_reg2, write_reg, write_enable, alu_sel);

opcode=8'b00000000;
#100;

opcode=8'b00000001;
#100;

opcode=8'b00000010;
#100;

opcode=8'b00000011;
#100;

opcode=8'b11111111;
#100;

end
endmodule
