module top(input clk, input [7:0] ins);

wire [7:0] immediate;
wire [2:0] read_reg1, read_reg2, write_reg, alu_sel;
wire write_enable, comp, imm_reg2;

control cu(ins, immediate, read_reg1, read_reg2, write_reg, write_enable, comp, imm_reg2, alu_sel);

wire [7:0] reg_out1, reg_out2;
wire [7:0] data;

reg_file rg(clk, read_reg1, read_reg2, write_reg, write_enable, data, reg_out1, reg_out2);

wire [7:0] reg_comp;
twos_compliment tc(reg_out2, reg_comp);

wire [7:0] im_reg;
assign im_reg = comp ? reg_comp : reg_out2;

wire [7:0] op1;
assign op1 = imm_reg2 ? immediate : im_reg;

wire [7:0] o;
wire c;
eight_bit_alu_case alu(op1, reg_out1, alu_sel, o, c);

assign data = o;

endmodule
