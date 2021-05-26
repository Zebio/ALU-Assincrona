module celula_3_de_5_comp(a,b,c,d,e,z);
input a,b,c,d,e;
output reg z;

integer out;


initial
z=0;

always@(a or b or c or d or e)
begin

out = a + b + c + d + e;

if (out>=3)
	z=1;
if (out==0)
	z=0;
else 
	z=z;

	
end
endmodule 