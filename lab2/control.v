module control(input [7:0] opcode, output reg [7:0] immediate, output reg [2:0] read_reg1,
output reg [2:0] read_reg2, output reg [2:0] write_reg, output reg write_enable, output reg comp, output reg imm_reg2, output reg [2:0] alu_sel);

always @(*)
begin
read_reg1 = 3'd0;            // accumulator A
read_reg2 = opcode[2:0];     // operand register B..H
write_reg = 3'd0;            // result back to A
write_enable = 1'b1;
comp = 1'b0;
imm_reg2 = 1'b0;
immediate = 8'b0;
alu_sel = 3'b001;

case (opcode[5:3])
3'b000: alu_sel = 3'b001;                          // ADD A,r
3'b001: begin alu_sel = 3'b001; comp = 1'b1; end   // SUB A,r
3'b010: alu_sel = 3'b010;                          // AND A,r
3'b011: alu_sel = 3'b011;                          // OR  A,r
3'b100: alu_sel = 3'b000;                          // MOV A,r
endcase

end
endmodule
