module somador_4bits(A,B,S,Cout);

input[7:0]A,B;
output[7:0]S;
output[1:0]Cout;

wire [1:0]w1,w2,w3;


meio_somador(A[0],A[1],B[0],B[1],S[0],S[1],w1[0],w1[1]);

somador_completo(A[2],A[3],B[2],B[3],w1[0],w1[1],S[2],S[3],w2[0]  ,w2[1]);

somador_completo(A[4],A[5],B[4],B[5],w2[0],w2[1],S[4],S[5],w3[0]  ,w3[1]);

somador_completo(A[6],A[7],B[6],B[7],w3[0],w3[1],S[6],S[7],Cout[0],Cout[1]);



endmodule 