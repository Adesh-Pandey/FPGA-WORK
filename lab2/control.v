module control(input [7:0] opcode, output reg [7:0] immediate, output reg [2:0] read_reg1,
output reg [2:0] read_reg2, output reg [2:0] write_reg, output reg write_enable, output reg comp, output reg imm_reg2, output reg [2:0] alu_sel);

always @(*)
begin
read_reg1 = 3'b000;
read_reg2 = 3'b000;
write_reg = 3'b000;
write_enable = 1'b1;
comp = 1'b0;
imm_reg2 = 1'b0;
immediate = 8'b0;
alu_sel = 3'b000;

case (opcode)
8'b00000000: begin read_reg1=3'd0; read_reg2=3'd1; write_reg=3'd0; end // ADD A,B
8'b00000001: begin read_reg1=3'd2; read_reg2=3'd3; write_reg=3'd2; end // ADD C,D
8'b00000010: begin read_reg1=3'd4; read_reg2=3'd5; write_reg=3'd4; end // ADD E,F
8'b00000011: begin read_reg1=3'd6; read_reg2=3'd7; write_reg=3'd6; end // ADD G,H
default: write_enable = 1'b0;
endcase

end
endmodule
