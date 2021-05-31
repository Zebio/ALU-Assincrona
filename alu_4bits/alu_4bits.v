module alu_4bits (a,b,sub,soma,cout,neg,zero);

input [7:0]a,b;
input [1:0]sub;
output[7:0]soma;
output[1:0]cout,neg,zero;

wire[7:0] comp1;

compl2_4bits comp_2(b,sub,comp1);

somador_4bits_cin_of som_4bits_cin_of(a,comp1,sub,soma,cout);

zero_detector_4bits zero_detector(soma,zero);

assign neg[1]=soma[7];
assign neg[0]=soma[6];

endmodule 