module celula2de3comp(a,b,c,z);
input a,b,c;
output reg z;

integer out;


initial
z=0;

always@(a or b or c)
begin

out = a + b + c;

if (out>=2)
	z=1;
if (out==0)
	z=0;
else 
	z=z;

	
end
endmodule 
