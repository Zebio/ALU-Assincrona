module somador_4bits_cin_of(A,B,Cin,S,Overflow);

input[7:0]A,B;
input[1:0]Cin;
output[7:0]S;
output[1:0]Overflow;

wire [1:0]w1,w2,w3;

wire xt,xf,yt,yf;


somador_completo(A[0],A[1],B[0],B[1],Cin[0],Cin[1],S[0],S[1],w1[0]  ,w1[1]);

somador_completo(A[2],A[3],B[2],B[3],w1[0] ,w1[1] ,S[2],S[3],w2[0]  ,w2[1]);

somador_completo(A[4],A[5],B[4],B[5],w2[0] ,w2[1] ,S[4],S[5],w3[0]  ,w3[1]);

somador_completo(A[6],A[7],B[6],B[7],w3[0], w3[1] ,S[6],S[7],,);

THXOR(xt,A[7],B[6],A[6],B[7]); //ab+cd
THXOR(xf,A[7],B[7],A[6],B[6]); //ab+cd

THXOR(yt,A[7],S[6],A[6],S[7]); //ab+cd
THXOR(yf,A[7],S[7],A[6],S[6]); //ab+cd

THAND(Overflow[0],xt,yf,xf,yt);

TH22 (Overflow[1],yt,xf);

endmodule 