module reg_file(input clk, input [2:0] read_reg1, read_reg2, write_reg, input write_enable, input [7:0] data, output [7:0] reg_out1, reg_out2);
reg [7:0] regs [0:7];

assign reg_out1 = regs[read_reg1];
assign reg_out2 = regs[read_reg2];

always @(posedge clk)
    if (write_enable) regs[write_reg] <= data;
endmodule
