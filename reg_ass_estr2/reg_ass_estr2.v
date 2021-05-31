module reg_ass_estr2 (a,b,hab,za,zb);

input a,b,hab;

output reg za,zb;

always@(hab)
begin

	if (hab==0)
	begin
		za=0;
		zb=0;
	end
	
	else
	begin
		za=a;
		zb=b;
	end
end
endmodule 
