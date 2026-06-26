module control(input [7:0] opcode, output reg [7:0]immediate, output reg [2:0]read_reg1 ,
output reg [2:0]read_reg2, output reg [2:0]write_reg, output reg write_enable, output reg comp, output reg imm_reg2, output reg [2:0] alu_sel) 

always @(*)
begin

read_reg1=0;
read_reg2=0;
write_reg=0;
write_enable=1;

case (opcode)
8'b00000000: alu_sel=000;read_reg1=000;read_reg2=001; // ADD A,B;
8'b00000001: alu_sel=000;read_reg1=000;read_reg2=001; // ADD C,D;
8'b00000010: alu_sel=000;read_reg1=000;read_reg2=001; // ADD E,F;
8'b00000011: alu_sel=000;read_reg1=000;read_reg2=001; // ADD G,H;
default:;
endcase

end
endmodule
