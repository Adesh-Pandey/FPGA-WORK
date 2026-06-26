module top(input reg [7:0] ins);
reg alu_sel=000; 

reg [7:0] immediate;
reg [2:0] read_reg1, read_reg2,write_reg;
reg write_enable;


control cu(ins,immediate,read_reg1, read_reg2,write_reg,write_enable,comp,imme_reg2,alu_sel)

reg [7:0] reg_out1, reg_out2;
// reg file
reg_file rg(read_reg1, read_reg2, write_reg, write_enable, data, reg_out1, reg_out2);
reg [7:0] reg_comp;

tows_compliment tc(reg_out2,reg_comp);
reg [7:0]im_reg;

if(comp) begin
im_reg=reg2_comp;
end 
else begin 
im_reg=reg_out2;
end


reg [7:0] op1
if(imme_reg2) begin 
op1 = immediate;
end 
else begin 
op1 = im_reg;
end


eight_bit_alu_case alu(op1, reg_out1, alu_sel, o, c);

data = o;

endmodule
