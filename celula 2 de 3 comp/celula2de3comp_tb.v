module celula2de3comp_tb();

reg A,B,C;

wire Z;

celula2de3comp dut(A,B,C,Z);

initial
begin

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 0
A=0;
B=0;
C=0;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 1
A=0;
B=0;
C=1;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 2
A=0;
B=1;
C=0;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 3
A=0;
B=1;
C=1;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 4
A=1;
B=0;
C=0;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 5
A=1;
B=0;
C=1;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

//Transicao para o estado 7
A=1;
B=1;
C=1;
#10;

//Transicao para o estado 6
A=1;
B=1;
C=0;
#10;

end
endmodule 