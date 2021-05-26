module somador_completo(Af,At,Bf,Bt,Cinf,Cint,Sf,St,Coutf,Coutt);

input Af,At,Bf,Bt,Cinf,Cint;
output Sf,St,Coutf,Coutt;



celula2de3comp(Cinf,Af,Bf,Coutf);

celula2de3comp(Cint,At,Bt,Coutt);

celula_3_de_5_comp(Coutf,Coutf,At,Bt,Cint,St);

celula_3_de_5_comp(Coutt,Coutt,Af,Bf,Cinf,Sf);

endmodule 


