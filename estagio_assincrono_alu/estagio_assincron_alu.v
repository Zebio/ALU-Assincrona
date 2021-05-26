module estagio_assincron_alu(a,b,sub,ack_in,soma,cout,neg,zero,ack_out);

input [7:0] a,b;
input [1:0] sub;
input ack_in;
output[7:0] soma;
output[1:0] cout,neg,zero;
output ack_out;


wire  [7:0]w_soma;
wire  [1:0]w_cout,w_neg,w_zero;
wire det,hab,ack_bar;

assign ack_bar=~ack_in;

alu_4bits (a,b,sub,w_soma,w_cout,w_neg,w_zero);

assign det=(w_soma[7] | w_soma[6]) & (w_soma[5] | w_soma[4]) & (w_soma[3] | w_soma[2]) & (w_soma[1] | w_soma[0]);

muller2estruturalB(det,ack_bar,hab);

assign ack_out=hab;

reg_ass_4bits Reg_4_bits(hab,w_soma,soma);

reg_ass_estr2(w_cout[1],w_cout[0],hab,cout[1],cout[0]);

reg_ass_estr2(w_neg [1],w_neg [0],hab,neg [1],neg [0]);

reg_ass_estr2(w_zero[1],w_zero[0],hab,zero[1],zero[0]);

endmodule 