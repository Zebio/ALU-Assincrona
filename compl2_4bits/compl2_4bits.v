module compl2_4bits(a,sub,r);

input  [7:0]a;
input  [1:0]sub;
output [7:0]r;


THXOR(r[7],a[7],sub[0],a[6],sub[1]);
THXOR(r[6],a[7],sub[1],a[6],sub[0]); 

THXOR(r[5],a[5],sub[0],a[4],sub[1]);
THXOR(r[4],a[5],sub[1],a[4],sub[0]);

THXOR(r[3],a[3],sub[0],a[2],sub[1]);
THXOR(r[2],a[3],sub[1],a[2],sub[0]);

THXOR(r[1],a[1],sub[0],a[0],sub[1]);
THXOR(r[0],a[1],sub[1],a[0],sub[0]);

endmodule
