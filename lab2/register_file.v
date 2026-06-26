module reg_file(input reg [2:0] read_reg1, input reg [2:0]read_reg2, input reg [2:0] write_reg,
input reg write_enable,input reg [7:0] data, output reg [7:0] reg_out1, reg_out2 );


reg [7:0] rf [7:0]=0;
reg [7:0] reg_out1;
reg[7:0] reg_out2;


always @(*)
begin

case (read_reg1)
3'b000:reg_out1=rf[0];
3'b001:reg_out1=rf[1];
3'b010: reg_out1=rf[2];
3'b011: reg_out1= rf[3];
3'b100: reg_out1=rf[4];
3'b101: reg_out1=rf[5];
3'b110: reg_out1=rf[6];
3'b111: reg_out1=rf[7];
endcase

case (read_reg2)
3'b000:reg_out2=rf[0];
3'b001:reg_out2=rf[1];
3'b010: reg_out2=rf[2];
3'b011: reg_out2= rf[3];
3'b100: reg_out2=rf[4];
3'b101: reg_out2=rf[5];
3'b110: reg_out2=rf[6];
3'b111: reg_out2=rf[7];
endcase

if (write_enable) begin
case (write_reg)
3'b000:rf[0]=data;
3'b001:rf[1]=data;
3'b010: rf[2]=data;
3'b011:  rf[3]=data;
3'b100: rf[4]=data;
3'b101:rf[5]=data;
3'b110: rf[6]=data;
3'b111: rf[7]=data;
endcase
end

end
end module
