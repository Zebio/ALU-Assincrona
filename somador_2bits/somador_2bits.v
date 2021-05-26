module somador_2bits(A0f,A0t,B0f,B0t,Cinf,Cint,A1f,A1t,B1f,B1t,Coutf,Coutt,S0f,S0t,S1f,S1t);
input A0f,A0t,B0f,B0t,Cinf,Cint,A1f,A1t,B1f,B1t;
output Coutf,Coutt,S0f,S0t,S1f,S1t;

wire Wf,Wt;

somador_completo(A0f,A0t,B0f,B0t,Cinf,Cint,S0f,S0t,Wf,Wt);

somador_completo(A1f,A1t,B1f,B1t,Wf,Wt,S1f,S1t,Coutf,Coutt);

endmodule 