module somador_completo(Af,At,Bf,Bt,Cinf,Cint,Sf,St,Coutf,Coutt);

input Af,At,Bf,Bt,Cinf,Cint;
output Sf,St,Coutf,Coutt;



celula2de3comp th2de31(Cinf,Af,Bf,Coutf);

celula2de3comp th2de32(Cint,At,Bt,Coutt);

celula_3_de_5_comp th3de51(Coutf,Coutf,At,Bt,Cint,St);

celula_3_de_5_comp th3de52(Coutt,Coutt,Af,Bf,Cinf,Sf);

endmodule 


