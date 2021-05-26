module alu_completa(drdata,sel,sub,ack_in,disp0,disp1,dispS,cout,neg,zero,negd1,negd2);

input [7:0] drdata;
input sel,sub,ack_in;
output [6:0]disp0,disp1,dispS;
output [1:0]cout,neg,zero;
output negd1,negd2;

wire[7:0]reg0,reg1,num0,num1,soma;
wire ack_bar,sub_bar;
wire[1:0]cin;

assign reg1 = sel? drdata     :8'b00000000;

assign reg0 = sel? 8'b00000000:drdata; 

est_ass_dual_rail_4bits (reg0,ack,num0);
est_ass_dual_rail_4bits (reg1,ack,num1);


estagio_assincron_alu(num0,num1,cin,ack_in,soma,cout,neg,zero,ack);

assign cin[1]= ~ack_in&sub;
assign cin[0]= ~ack_in&~sub;

seg7_dual_rail(num0,disp0,negd1);

seg7_dual_rail(num1,disp1,negd2);

seg7_dual_rail(soma,dispS,);


endmodule
