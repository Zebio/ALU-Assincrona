module meio_somador(Af,At,Bf,Bt,Sf,St,Coutf,Coutt);

input Af,At,Bf,Bt;
output Sf,St,Coutf,Coutt;

wire w1,w2,w3;
celula2de2comp(At,Bt,Coutt);
celula2de2comp(At,Bf,w1);
celula2de2comp(Af,Bt,w2);
celula2de2comp(Af,Bf,w3);

celula1de3comp(w1,w2,w3,Coutf);

or (St,w1,w2);

or (Sf,Coutt,w3);

endmodule 